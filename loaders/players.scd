(
var project, ensemble;

project = topEnvironment[\inDreams];
ensemble = project[\ensembles][project[\ensemble]];

[\melody, \bass, \harmony].do { |partName|
    var source, realize;

    source =
        project[\utils][\patterns][\part].(
            project[partName]
        );

    realize = project[\realizations][ ensemble[partName]];

    project[\player][partName] = source.collect(realize);
};
)
