(
var project, source, ensemble, realize;

project = topEnvironment[\inDreams];

source =
  project[\utils][\patterns][\part].(project[\melody]);

ensemble =
  project[\ensembles][project[\ensemble]];

realize =
  project[\realizations][ensemble[\melody]];

project[\player][\melody] = source.collect(realize);
)
