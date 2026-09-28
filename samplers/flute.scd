(
var project, sampleTools;
project = topEnvironment[\inDreams];
sampleTools = project[\utils][\sample];

project[\samplers][\flute] = { |midi|
  sampleTools[\resolveMidi].(
    project[\samples][\flute][\susNV],
    midi
  )
};
)
