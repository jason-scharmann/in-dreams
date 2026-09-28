(

var root;
root = topEnvironment[\inDreams][\paths][\root];

[
  "recording/core.scd"
].do { |file|
  (root +/+ file).load;
};

)
