(
var project;
var duration;
var validatePhrase;
var validateSection;
var validatePart;

project = topEnvironment[\inDreams];
duration = project[\utils][\duration];


validatePhrase = {
    |partName, sectionName, phraseIndex, phrase|

    var beats;
    var label;

    label = "%/% phrase %".format(
        partName,
        sectionName,
        phraseIndex + 1
    );

    beats = duration[\totalBeats].(phrase);

    duration[\assertBeats].(
        beats,
        8,
        label
    );

    beats
};


validateSection = {
    |partName, sectionName, section|

    var total;
    var label;

    label = "%/%".format(
        partName,
        sectionName
    );

    if(section.isNil) {
        Error(
            "% is missing section %"
            .format(
                partName,
                sectionName
            )
        ).throw;
    };

    if(section.size != 4) {
        Error(
            "% has % phrases; expected 4"
            .format(
                label,
                section.size
            )
        ).throw;
    };

    total = 0;

    section.do { |phrase, index|
        total = total + validatePhrase.(
            partName,
            sectionName,
            index,
            phrase
        );
    };

    duration[\assertBeats].(
        total,
        32,
        label
    );

    total
};


validatePart = { |partName, part|
    var total;

    total = 0;

    [\first, \second].do { |sectionName|
        total = total + validateSection.(
            partName,
            sectionName,
            part[sectionName]
        );
    };

    duration[\assertBeats].(
        total,
        64,
        partName
    );

    total
};


project[\utils][\composition] = (
    validateAll: {
        [\melody, \bass, \harmony].do { |partName|
            validatePart.(
                partName,
                project[partName]
            );
        };

        "composition valid: melody, bass, harmony = 64 beats"
        .postln;
    }
);
)
