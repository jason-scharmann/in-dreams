(
var project, root, compositionFactory;

project = topEnvironment[\inDreams];
root = project[\paths][\root];

project[\utils][\sample] =
    (root +/+ "utils/sample.scd").load;

project[\utils][\duration] =
    (root +/+ "utils/duration.scd").load;

compositionFactory =
    (root +/+ "utils/composition.scd").load;

project[\utils][\composition] =
    compositionFactory.(
        project[\utils][\duration]
    );
)
