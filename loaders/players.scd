(
var project, ensemble;
project = topEnvironment[\inDreams];
ensemble = project[\ensembles][ project[\ensemble] ];

project[\score][\partOrder].do { |partName|
  var source;
  var realizationName;
  var realize;

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
)
