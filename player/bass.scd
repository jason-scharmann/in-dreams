(
var project, source, ensemble, realize;

project = topEnvironment[\inDreams];

source =
  project[\utils][\patterns][\part].(project[\bass]);

ensemble =
  project[\ensembles][project[\ensemble]];

realize =
  project[\realizations][ensemble[\bass]];

project[\player][\bass] = source.collect(realize);
)
