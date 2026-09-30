(
var project, root;
var score, composition;

project = topEnvironment[\inDreams];
root = project[\paths][\root];

project[\score] = (
  partOrder: [
    \melody,
    \bass,
    \harmony
  ],

  form: [
    \first,
    \second
  ],

  authoring: (
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
  ),

  gestures: [],

  parts: ()
);

score = project[\score];
composition = project[\utils][\composition];

composition[\validateAll].(score);

score[\parts] = composition[\normalizeAll].(score);
)
