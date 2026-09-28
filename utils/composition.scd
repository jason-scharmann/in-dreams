(
var project;
var closeEnough;
var phraseBeats;
var validatePhrase;
var validateSection;
var validatePart;

project = topEnvironment[\inDreams];

closeEnough = { |a, b|
  (a - b).abs < 0.000001
};

phraseBeats = { |phrase|
  var total;
  total = 0;

  phrase.do { |event|
    var dur;
    dur = event[\dur];

    if(dur.isNil) {
      Error("composition event is missing \\dur").throw;
    };

    if(dur <= 0) {
      Error(
        "composition event has invalid duration: %"
        .format(dur)
      ).throw;
    };

    total = total + dur;
  };
  total
};

validatePhrase = {
  |partName, sectionName, phraseIndex, phrase|

  var beats;

  beats = phraseBeats.(phrase);

  if(closeEnough.(beats, 8).not) {
    Error(
      "%/% phrase % has % beats; expected 8"
      .format(
        partName,
        sectionName,
        phraseIndex + 1,
        beats
      )
    ).throw;
  };

  beats
};

validateSection = {
  |partName, sectionName, section|

  var total;

  if(section.isNil) {
    Error(
      "% is missing section %"
      .format(partName, sectionName)
    ).throw;
  };

  if(section.size != 4) {
    Error(
      "%/% has % phrases; expected 4"
      .format(
        partName,
        sectionName,
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

  if(closeEnough.(total, 32).not) {
    Error(
      "%/% has % beats; expected 32"
      .format(
        partName,
        sectionName,
        total
      )
    ).throw;
  };

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

  if(closeEnough.(total, 64).not) {
    Error(
      "% has % beats; expected 64"
      .format(partName, total)
    ).throw;
  };
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
