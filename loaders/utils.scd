(
var root;
root = topEnvironment[\inDreams][\paths][\root];

[
  "utils/sample.scd",
  "utils/composition.scd",
  "utils/pattern.scd"
].do { |file|
  (root +/+ file).load;
};

)
