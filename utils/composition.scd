(
{ |duration|
  var validatePhrase, validateSection, validatePart;
  var normalizePart, normalizeAll;
  var resolveAddress;

  validatePhrase = {
    |partName, sectionName, phraseIndex, phrase|

    var beats, label;

    label = "%/% phrase %".format(
      partName,
      sectionName,
      phraseIndex + 1
    );

    beats = duration[\totalBeats].(phrase);

    duration[\assertBeats].(beats, 8, label);

    beats
  };

  validateSection = {
    |partName, sectionName, section|

    var total, label;

    label = "%/%".format(partName, sectionName);

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


  validatePart = {
    |partName, part, form|

    var total;

    total = 0;

    form.do { |sectionName|
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


  normalizePart = {
    |part, form|

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


  normalizeAll = { |score|
    var parts;

    parts = ();

    score[\partOrder].do { |partName|
      parts[partName] =
      normalizePart.(
        score[\authoring][partName],
        score[\form]
      );
    };

    parts
  };


  resolveAddress = {
    |score, partName, address|

    var part, form;
    var sectionName, sectionIndex, section;
    var phraseIndex, phrase, phraseBeats;
    var beat, absoluteBeat;

    part = score[\authoring][partName];

    if(part.isNil) {
      Error(
        "unknown part: %"
        .format(partName)
      ).throw;
    };

    form = score[\form];
    sectionName = address[\section];
    phraseIndex = address[\phrase];
    beat = address[\beat];

    sectionIndex = form.indexOf(sectionName);

    if(sectionIndex.isNil) {
      Error(
        "unknown section: %"
        .format(sectionName)
      ).throw;
    };

    section = part[sectionName];

    if(
      phraseIndex.isNil
      or: { phraseIndex < 0 }
      or: { phraseIndex >= section.size }
    ) {
      Error(
        "invalid phrase index % for %/%"
        .format(
          phraseIndex,
          partName,
          sectionName
        )
      ).throw;
    };

    phrase = section[phraseIndex];
    phraseBeats = duration[\totalBeats].(phrase);

    if(
      beat.isNil
      or: { beat < 0 }
      or: { beat > phraseBeats }
    ) {
      Error(
        "invalid beat % for %/% phrase %"
        .format(
          beat,
          partName,
          sectionName,
          phraseIndex + 1
        )
      ).throw;
    };

    absoluteBeat = 0;

    sectionIndex.do { |index|
      part[form[index]].do { |precedingPhrase|
        absoluteBeat =
        absoluteBeat
        + duration[\totalBeats].(
          precedingPhrase
        );
      };
    };

    phraseIndex.do { |index|
      absoluteBeat =
      absoluteBeat
      + duration[\totalBeats].(
        section[index]
      );
    };

    absoluteBeat + beat
  };


  (
    validateAll: { |score|

      score[\partOrder].do { |partName|
        validatePart.(
          partName,
          score[\authoring][partName],
          score[\form]
        );
      };

      "composition valid: all parts = 64 beats"
      .postln;
    },

    normalizeAll: normalizeAll,

    resolveAddress: resolveAddress
  )
}
)
