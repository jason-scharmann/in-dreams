(
var root, oldProject, project, config;
root = thisProcess.nowExecutingPath.dirname;
config = (root +/+ "config.local.scd").load;

oldProject = topEnvironment[\inDreams];
if(oldProject.notNil) {
  if(oldProject[\cleanup].notNil) {
    oldProject[\cleanup].();
  };
};

project = (
  clock: TempoClock(75 / 60),
  paths: (
    root: root,
    vsco: config[\vsco],
    output: root +/+ "output",
    recordings: root +/+ "output/recordings"
  ),
  utils: (),
  synths: (),
  samples: (),
  samplers: (),
  realizations: (),
  ensemble: \vsco,
  // ensemble: \chip,
  ensembles: (
    vsco: (
      melody: \vscoFlute,
      bass: \vscoCello,
      harmony: \vscoHarp
    ),
    chip: (
      melody: \chipLead,
      bass: \chipBass,
      harmony: \chipHarmony
    ),
  ),
  melody: (),
  bass: (),
  harmony: (),
  player: (),
  score: (),
  buses: (),
  groups: (),
  effects: (),
  recording: (),

);

topEnvironment[\inDreams] = project;

File.mkdir(
    project[\paths][\recordings]
);

project[\cleanup] = {
  var stream;
  var sourceGroup;
  var effectsGroup;
  var mixBus;
  var clock;

  if(project[\recording][\stop].notNil) {
    project[\recording][\stop].();
  };

  if(s.isRecording) {
    s.stopRecording;
  };

  stream = project[\player][\stream];
  if(stream.notNil) {
    stream.stop;
    project[\player][\stream] = nil;
  };

  clock = project[\clock];
  if(clock.notNil) {
    clock.stop;
  };

  if(s.serverRunning) {
    effectsGroup = project[\groups][\effects];

    if(effectsGroup.notNil) {
      effectsGroup.free;
    };

    sourceGroup = project[\groups][\sources];

    if(sourceGroup.notNil) {
      sourceGroup.free;
    };

    project[\samples].keysValuesDo {
      |instrumentName, layers|

      layers.keysValuesDo {
        |layerName, samples|

        samples.do { |sample|
          if(sample[\buffer].notNil) {
            sample[\buffer].free;
          };
        };
      };
    };
  };

  mixBus = project[\buses][\mix];

  if(mixBus.notNil) {
    mixBus.free;
  };
};

s.waitForBoot {
  Routine({
    (root +/+ "loaders/utils.scd").load;
    (root +/+ "loaders/instruments.scd").load;
    s.sync;
    project[\buses][\mix] = Bus.audio(s, 2);
    project[\groups][\sources] = Group.head(s);
    project[\groups][\effects] = Group.after(project[\groups][\sources]);
    project[\effects][\reverb] = Synth.head(
      project[\groups][\effects],
      project[\synths][\reverb],
      [
        \in, project[\buses][\mix],
        \out, 0,
        \mix, 0.15,
        \room, 0.6,
        \damp, 0.5
      ]
    );
    s.sync;
    (root +/+ "loaders/realizations.scd").load;
    (root +/+ "loaders/composition.scd").load;
    (root +/+ "loaders/players.scd").load;
    (root +/+ "loaders/score.scd").load;
    (root +/+ "loaders/recording.scd").load;
    "in-dreams ready".postln;
  }).play(AppClock);
};
)
