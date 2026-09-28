///////////////////////////////////////////////////////////////////////////////
// EMERGENCY STOP
///////////////////////////////////////////////////////////////////////////////
topEnvironment[\inDreams][\recording][\stop].();
///////////////////////////////////////////////////////////////////////////////
// Full Recordings
///////////////////////////////////////////////////////////////////////////////
// COMPLETE ---------------------------
(
var project;
project = topEnvironment[\inDreams];
project[\recording][\full].( "in-dreams-full-chip.wav");
)
// Full Wet-Only Recording ------------
(
var project;
project = topEnvironment[\inDreams];
project[\recording][\wet].( "in-dreams-reverb-wet.wav");
)
///////////////////////////////////////////////////////////////////////////////
//  Individual Dry Tracks
///////////////////////////////////////////////////////////////////////////////
// Dry Flute --------------------------
(
var project;
project = topEnvironment[\inDreams];
project[\recording][\dry].( \melody, "in-dreams-flute-dry.wav");
)
// Dry Cello --------------------------
(
var project;
project = topEnvironment[\inDreams];
project[\recording][\dry].(\bass, "in-dreams-cello-dry.wav");
)
// Dry Harp ---------------------------
(
var project;
project = topEnvironment[\inDreams];
project[\recording][\dry].(\harmony, "in-dreams-harp-dry.wav");
)
