(
var root;
root = topEnvironment[\inDreams][\paths][\root];

[
  "score/score.scd"
].do { |file|
  (root +/+ file).load;
};

)
