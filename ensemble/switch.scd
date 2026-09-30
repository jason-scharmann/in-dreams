(
var project;

project = topEnvironment[\inDreams];

project[\setEnsemble] = { |name|
  var stream;

  if(project[\ensembles][name].isNil) {
    Error(
      "unknown ensemble: %".format(name)
    ).throw;
  };

  stream = project[\player][\stream];

  if(stream.notNil) {
    stream.stop;
    project[\player][\stream] = nil;
  };

  project[\ensemble] = name;

  project[\player][\build].();
  project[\score][\build].();

  "ensemble: %".format(name).postln;
};
)
