(
var project, source;
project = topEnvironment[\inDreams];
source = project[\utils][\patterns][\part].(project[\harmony]);

project[\player][\harmony] = source.collect { |event|
  var out, samples;
  out = event.copy;

  out[\instrument] = project[\synths][\harp];
  out[\out] = project[\buses][\mix];
  out[\group] = project[\groups][\sources];
  out[\amp] = 0.2;

  if(out[\midinote].isRest.not) {
    samples = out[\midinote].collect { |midi|
      project[\samplers][\harp].(midi)
    };

    out[\buf] = samples.collect { |sample|
      sample[\buf]
    };

    out[\rate] = samples.collect { |sample|
      sample[\rate]
    };

    out[\sampleGain] = samples.collect { |sample|
      sample[\sampleGain]
    };
  };
  out
};
)
