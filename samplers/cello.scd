(
var project, sampleTools;

project = topEnvironment[\inDreams];
sampleTools = project[\utils][\sample];

project[\samplers][\cello] = { |midi|
    sampleTools[\resolveMidi].(
        project[\samples][\cello][\susvib],
        midi
    )
};
)
