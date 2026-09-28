(
var project, root, factory;

project = topEnvironment[\inDreams];
root = project[\paths][\root];


factory =
(root +/+ "realizations/vsco-flute.scd").load;

project[\realizations][\vscoFlute] =
factory.(
  project[\synths][\flute],
  project[\samplers][\flute],
  project[\buses][\mix],
  project[\groups][\sources],
  0.6,
  0.9
);


factory =
(root +/+ "realizations/vsco-cello.scd").load;

project[\realizations][\vscoCello] =
factory.(
  project[\synths][\cello],
  project[\samplers][\cello],
  project[\buses][\mix],
  project[\groups][\sources],
  0.5,
  1
);


factory =
(root +/+ "realizations/vsco-harp.scd").load;

project[\realizations][\vscoHarp] =
factory.(
  project[\synths][\harp],
  project[\samplers][\harp],
  project[\buses][\mix],
  project[\groups][\sources],
  0.2
);
)
