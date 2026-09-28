(
var project, root;
project = topEnvironment[\inDreams];
root = project[\paths][\root];

project[\utils][\sample] = (root +/+ "utils/sample.scd").load;
project[\utils][\duration] = (root +/+ "utils/duration.scd").load;

(root +/+ "utils/composition.scd").load;
)
