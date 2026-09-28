(
var project, source, realize;

project = topEnvironment[\inDreams];

source =
  project[\utils][\patterns][\part].(project[\bass]);

realize =
  project[\realizations][project[\ensemble][\bass]];

project[\player][\bass] = source.collect(realize);
)
