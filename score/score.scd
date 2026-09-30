(
var project;

project = topEnvironment[\inDreams];

project[\score][\build] = {
  var players;
  players = project[\score][\partOrder].collect { |partName|
    project[\player][partName]
  };
  project[\score][\full] = Ppar(players, 1);
};

project[\score][\build].();
)
