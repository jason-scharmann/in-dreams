(
var project, sampleTools;

project = topEnvironment[\inDreams];
sampleTools = project[\utils][\sample];

project[\samplers][\harp] = { |midi|
    sampleTools[\resolveMidi].(
        project[\samples][\harp][\mf],
        midi
    )
};
)
