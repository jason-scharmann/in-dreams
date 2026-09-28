(
var project, source, ensemble, realize;

project = topEnvironment[\inDreams];

source =
  project[\utils][\patterns][\part].(project[\harmony]);

ensemble =
  project[\ensembles][project[\ensemble]];

realize =
  project[\realizations][ensemble[\harmony]];

project[\player][\harmony] = source.collect(realize);
)
