(
var project, source;
project = topEnvironment[\inDreams];
source = project[\utils][\patterns][\part].(project[\melody]);

project[\player][\melody] = source.collect { |event|
  var out, sample;
  out = event.copy;
  out[\instrument] = project[\synths][\flute];
  out[\out] = project[\buses][\mix];
  out[\group] = project[\groups][\sources];
  out[\amp]        = 0.6;
  out[\legato]     = 0.9;
  if(out[\midinote].isRest.not) {
    sample = project[\samplers][\flute].(
      out[\midinote]
    );
    out[\buf] = sample[\buf];
    out[\rate] = sample[\rate];
    out[\sampleGain] = sample[\sampleGain];
  };
  out
};
)
