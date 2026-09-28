(
var project, source, realize;

project = topEnvironment[\inDreams];

source =
  project[\utils][\patterns][\part].(project[\melody]);

realize =
  project[\realizations][project[\ensemble][\melody]];

project[\player][\melody] = source.collect(realize);
)
