(
var project, root;
project = topEnvironment[\inDreams];
root = project[\paths][\root];

project[\utils][\sample] = (root +/+ "utils/sample.scd").load;
project[\utils][\duration] = (root +/+ "utils/duration.scd").load;

[
  "utils/composition.scd",
  "utils/pattern.scd"
].do { |file|
  (root +/+ file).load;
};

)
