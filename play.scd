(
var project;
project = topEnvironment[\inDreams];
// project[\setEnsemble].(\chip);

if(project[\player][\stream].notNil){
  project[\player][\stream].stop;
};

project[\player][\stream] =
  project[\score][\full].play(project[\clock]);
)

topEnvironment[\inDreams][\player][\stream].stop;
