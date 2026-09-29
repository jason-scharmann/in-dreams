///////////////////////////////////////////////////////////////////////////////
// EMERGENCY STOP
///////////////////////////////////////////////////////////////////////////////
topEnvironment[\inDreams][\recording][\stop].();
///////////////////////////////////////////////////////////////////////////////
// Full Recordings
///////////////////////////////////////////////////////////////////////////////
// COMPLETE ---------------------------
(
var project, ensemble;
project = topEnvironment[\inDreams];
ensemble = project[\ensemble].asString;

project[\recording][\full].(
  "in-dreams-%-full.wav".format(ensemble)
);
)
// Full Wet-Only Recording ------------
(
var project, ensemble;
ensemble = project[\ensemble].asString;
project = topEnvironment[\inDreams];

project[\recording][\wet].(
  "in-dreams-%-reverb-wet.wav".format(ensemble)
);
)
///////////////////////////////////////////////////////////////////////////////
//  Individual Dry Tracks
///////////////////////////////////////////////////////////////////////////////
// Dry Flute --------------------------
(
var project, ensemble, part;
project = topEnvironment[\inDreams];
ensemble = project[\ensemble].asString;
part = \melody;

project[\recording][\dry].(
  part,
  "in-dreams-%-%-dry.wav".format(
    ensemble,
    part.asString
));
)
// Dry Cello --------------------------
(
var project, ensemble;
project = topEnvironment[\inDreams];
ensemble = project[\ensemble].asString;
part = \bass;

project[\recording][\dry].(
  part,
  "in-dreams-%-%-dry.wav".format(
    ensemble,
    part.asString
  )
);
)
// Dry Harp ---------------------------
(
var project, ensemble;
project = topEnvironment[\inDreams];
ensemble = project[\ensemble].asString;
part = \harmony;

project[\recording][\dry].(
  part,
  "in-dreams-harp-dry.wav".format(
    ensemble,
    part.asString
  )
);
)
