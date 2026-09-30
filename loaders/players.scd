(
var project;
project = topEnvironment[\inDreams];

project[\player][\build] = {
  var ensemble;
  ensemble = project[\ensembles][project[\ensemble]];

  project[\score][\partOrder].do { |partName|
    var source, realizationName, realize;
    source = Pseq(project[\score][\parts][partName], 1);
    realizationName = ensemble[partName];
    if(realizationName.isNil) {
      Error(
        "ensemble % has no realization for part %"
        .format(
          project[\ensemble],
          partName
        )
      ).throw;
    };
    realize = project[\realizations][realizationName];
    project[\player][partName] = source.collect(realize);
  };
};
project[\player][\build].();
)
