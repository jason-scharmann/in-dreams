(
var project, duration;
var validatePhrase, validateSection, validatePart;
var normalizePart, normalizeAll;

project = topEnvironment[\inDreams];
duration = project[\utils][\duration];


validatePhrase = {
  |partName, sectionName, phraseIndex, phrase|

  var beats, label;

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

  var total, label;

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

  project[\score][\form].do { |sectionName|
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


normalizePart = { |part, form|
  var events;

  events = List.new;

  form.do { |sectionName|
    var section;

    section = part[sectionName];

    if(section.isNil) {
      Error(
        "part is missing section %"
        .format(sectionName)
      ).throw;
    };

    section.do { |phrase|
      phrase.do { |event|
        events.add(event);
      };
    };
  };

  events.asArray
};


normalizeAll = {
  var form;

  form = project[\score][\form];

  project[\score][\partOrder].do { |partName|
    project[\score][\parts][partName] =
    normalizePart.(
      project[partName],
      form
    );
  };
};


project[\utils][\composition] = (
  validateAll: {
    project[\score][\partOrder].do { |partName|
      validatePart.(
        partName,
        project[partName]
      );
    };

    "composition valid: melody, bass, harmony = 64 beats"
    .postln;
  },

  normalizeAll: normalizeAll
);
)
