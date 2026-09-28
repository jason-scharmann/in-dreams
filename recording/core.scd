(
var project;
var stopRecording;
var recordPattern;

project = topEnvironment[\inDreams];

stopRecording = {
  var routine, stream, originalMix;

  routine = project[\recording][\routine];

  if(routine.notNil) {
    routine.stop;
    project[\recording][\routine] = nil;
  };

  stream = project[\player][\stream];

  if(stream.notNil) {
    stream.stop;
    project[\player][\stream] = nil;
  };

  if(s.isRecording) {
    s.stopRecording;
  };

  originalMix = project[\recording][\originalReverbMix];

  if(originalMix.notNil) {
    if(project[\effects][\reverb].notNil) {
      project[\effects][\reverb].set(
        \mix,
        originalMix
      );
    };

    project[\recording][\originalReverbMix] = nil;
  };
};


recordPattern = {
  |pattern, filename, bus,
  preRoll = 1.5, tail = 10, beats = 64|

  var path, routine;

  if(pattern.isNil) {
    Error("recording pattern is nil").throw;
  };

  if(bus.isNil) {
    Error("recording bus is nil").throw;
  };

  stopRecording.();

  path = project[\paths][\recordings] +/+ filename;

  routine = Routine({
    var scoreSeconds;

    scoreSeconds =
    beats / project[\clock].tempo;

    s.recHeaderFormat = "wav";
    s.recSampleFormat = "float";

    s.prepareForRecord(
      path,
      2
    );

    s.sync;

    s.record(
      bus: bus,
      numChannels: 2
    );

    s.sync;

    "recording started: %"
    .format(path)
    .postln;

    preRoll.wait;

    project[\player][\stream] =
    pattern.play(project[\clock]);

    scoreSeconds.wait;

    "score finished; recording tail"
    .postln;

    tail.wait;

    if(s.isRecording) {
      s.stopRecording;
      s.sync;
    };

    project[\player][\stream] = nil;
    project[\recording][\routine] = nil;

    "recording finished: %"
    .format(path)
    .postln;
  });

  project[\recording][\routine] = routine;

  routine.play(SystemClock);
};


project[\recording] = (
  routine: nil,

  // Used only while making a wet-only reverb recording.
  originalReverbMix: nil,

  stop: stopRecording,

  pattern: recordPattern,

  dry: {
    |playerName, filename,
    preRoll = 1.5, tail = 10, beats = 64|

    var pattern;

    pattern = project[\player][playerName];

    if(pattern.isNil) {
      Error(
        "unknown player: %"
        .format(playerName)
      ).throw;
    };

    recordPattern.(
      pattern,
      filename,
      project[\buses][\mix],
      preRoll,
      tail,
      beats
    );
  },

  full: {
    |filename = "in-dreams-full.wav",
    preRoll = 1.5, tail = 10, beats = 64|

    recordPattern.(
      project[\score][\full],
      filename,
      0,
      preRoll,
      tail,
      beats
    );
  },

  wet: {
    |filename = "in-dreams-reverb-wet.wav",
    preRoll = 1.5, tail = 10, beats = 64|

    var reverb;

    reverb = project[\effects][\reverb];

    if(reverb.isNil) {
      Error("reverb synth is nil").throw;
    };

    stopRecording.();

    reverb.get(\mix, { |originalMix|
      var path, routine;
      path = project[\paths][\recordings] +/+ filename;
      project[\recording][\originalReverbMix] = originalMix;

      routine = Routine({
        var scoreSeconds;
        scoreSeconds = beats / project[\clock].tempo;

        s.recHeaderFormat = "wav";
        s.recSampleFormat = "float";

        s.prepareForRecord(path, 2);
        s.sync;

        // 100% wet for analysis.
        reverb.set(\mix, 1);

        s.sync;
        s.record(bus: 0, numChannels: 2);
        s.sync;

        "wet recording started: %"
        .format(path)
        .postln;

        preRoll.wait;

        project[\player][\stream] =
          project[\score][\full].play(project[\clock]);

        scoreSeconds.wait;

        "score finished; recording reverb tail"
        .postln;

        tail.wait;

        if(s.isRecording) {
          s.stopRecording;
          s.sync;
        };

        reverb.set(
          \mix,
          originalMix
        );

        project[\recording][\originalReverbMix] = nil;
        project[\player][\stream] = nil;
        project[\recording][\routine] = nil;

        "reverb mix restored to %"
        .format(originalMix)
        .postln;

        "recording finished: %"
        .format(path)
        .postln;
      });

      project[\recording][\routine] = routine;

      routine.play(SystemClock);
    });
  }
);
)
