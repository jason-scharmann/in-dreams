(

var root;
root = topEnvironment[\inDreams][\paths][\root];

[
  "samples/flute.scd",
  "synths/flute.scd",
  "samplers/flute.scd",

  "samples/cello.scd",
  "synths/cello.scd",
  "samplers/cello.scd",

  "samples/harp.scd",
  "synths/harp.scd",
  "samplers/harp.scd",

  "synths/reverb.scd"
].do { |file|
  (root +/+ file).load;
};

)
