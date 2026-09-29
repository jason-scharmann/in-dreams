(
var project, root;
project = topEnvironment[\inDreams];
root = project[\paths][\root];

project[\score][\partOrder] = [
  \melody,
  \bass,
  \harmony
];

project[\score][\form] = [
  \first,
  \second
];

project[\score][\authoring] = (
  melody: (
    first: (root +/+ "melody/first.scd").load,
    second: (root +/+ "melody/second.scd").load
  ),
  bass: (
    first: (root +/+ "bass/first.scd").load,
    second: (root +/+ "bass/second.scd").load
  ),
  harmony: (
    first: (root +/+ "harmony/first.scd").load,
    second: (root +/+ "harmony/second.scd").load
  )
);

project[\score][\parts] = ();

project[\utils][\composition][\validateAll].();

project[\utils][\composition][\normalizeAll].();
)
