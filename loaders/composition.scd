(
var project, root;
project = topEnvironment[\inDreams];
root = project[\paths][\root];

[
  "melody/first.scd",
  "melody/second.scd",

  "bass/first.scd",
  "bass/second.scd",

  "harmony/first.scd",
  "harmony/second.scd"
].do { |file|
  (root +/+ file).load;
};

project[\score][\partOrder] = [
    \melody,
    \bass,
    \harmony
];

project [\utils][\composition][\validateAll].();
)
