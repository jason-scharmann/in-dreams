(
var project, root, sampleTools;
var samplerFactory;

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

samplerFactory =
(root +/+ "samplers/flute.scd").load;

project[\samplers][\flute] =
samplerFactory.(
  project[\samples][\flute],
  sampleTools
);


project[\samples][\cello] =
sampleTools[\loadCatalog].(
  (root +/+ "samples/cello.scd").load,
  project[\paths][\vsco],
  s
);

(root +/+ "synths/cello.scd").load;

samplerFactory =
(root +/+ "samplers/cello.scd").load;

project[\samplers][\cello] =
samplerFactory.(
  project[\samples][\cello],
  sampleTools
);


project[\samples][\harp] =
sampleTools[\loadCatalog].(
  (root +/+ "samples/harp.scd").load,
  project[\paths][\vsco],
  s
);

(root +/+ "synths/harp.scd").load;

samplerFactory =
(root +/+ "samplers/harp.scd").load;

project[\samplers][\harp] =
samplerFactory.(
  project[\samples][\harp],
  sampleTools
);


(root +/+ "synths/reverb.scd").load;
)
