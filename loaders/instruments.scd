(
var project, root, sampleTools;

project = topEnvironment[\inDreams];
root = project[\paths][\root];
sampleTools = project[\utils][\sample];


project[\samples][\flute] =
sampleTools[\loadCatalog].(
  (root +/+ "samples/flute.scd").load,
  project[\paths][\vsco],
  s
);
(root +/+ "synths/flute.scd").load;
(root +/+ "samplers/flute.scd").load;


project[\samples][\cello] =
sampleTools[\loadCatalog].(
  (root +/+ "samples/cello.scd").load,
  project[\paths][\vsco],
  s
);
(root +/+ "synths/cello.scd").load;
(root +/+ "samplers/cello.scd").load;


project[\samples][\harp] =
sampleTools[\loadCatalog].(
  (root +/+ "samples/harp.scd").load,
  project[\paths][\vsco],
  s
);
(root +/+ "synths/harp.scd").load;
(root +/+ "samplers/harp.scd").load;


(root +/+ "synths/reverb.scd").load;
)
