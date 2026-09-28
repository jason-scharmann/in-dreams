
(
var project, players;

project = topEnvironment[\inDreams];

players =
    project[\score][\partOrder].collect { |partName|
        project[\player][partName]
    };

project[\score][\full] = Ppar(players, 1);
)
