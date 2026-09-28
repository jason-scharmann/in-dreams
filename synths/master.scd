(
var project;
project = topEnvironment[\inDreams];

SynthDef(\waveWeaveMaster, {
  |out = 0, gainDb = 11, ceiling = 0.84|

  var sig;

  sig = In.ar(out, 2);

  sig = LeakDC.ar(sig);

  sig = sig * gainDb.dbamp;

  sig = Limiter.ar(
    sig,
    ceiling,
    0.01
  );

  ReplaceOut.ar(out, sig);
}).add;

project[\synths][\master] = \waveWeaveMaster;
)
