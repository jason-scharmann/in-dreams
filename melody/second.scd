(
var heldFs, upperAnswer, heldFsVar, climax;
heldFs = [
  (midinote: 62, dur: 0.5, dynamic: \mf),     // D4
  (midinote: 64, dur: 0.5, dynamic: \mf),     // E4
  (midinote: 66, dur: 5, dynamic: \mf),       // F#4
  (midinote: Rest(0), dur: 0.5),
  (midinote: 66, dur: 0.5, dynamic: \mf),     // F#4
  (midinote: 71, dur: 0.5, dynamic: \mf),     // B4
  (midinote: 73, dur: 0.5, dynamic: \mf)      // C#5
];
upperAnswer = [
  (midinote: 74, dur: 1.5, dynamic: \mf),     // D5
  (midinote: 76, dur: 0.25, dynamic: \mf),    // E5
  (midinote: 74, dur: 0.25, dynamic: \mf),    // D5
  (midinote: 73, dur: 1, dynamic: \mf),       // C#5
  (midinote: 69, dur: 1, dynamic: \mf),       // A4
  (midinote: 66, dur: 2, dynamic: \mf),       // F#4
  (midinote: 64, dur: 1, dynamic: \mf),       // E4
  (midinote: 62, dur: 0.5, dynamic: \mf),     // D4
  (midinote: 64, dur: 0.5, dynamic: \mf)      // E4
];
heldFsVar = [
  (midinote: 66, dur: 6, dynamic: \mf),       // F#4
  (midinote: Rest(0), dur: 0.5, dynamic: \mf),
  (midinote: 66, dur: 0.5, dynamic: \mf),     // F#4
  (midinote: 71, dur: 0.5, dynamic: \mf),     // B4
  (midinote: 73, dur: 0.5, dynamic: \mf)      // C#5
];
climax = [
  (midinote: 74, dur: 2, dynamic: \mf),       // D5
  (midinote: 76, dur: 1.5, dynamic: \mf),     // E5
  (midinote: 74, dur: 0.25, dynamic: \mf),    // D5
  (midinote: 76, dur: 0.25, dynamic: \mf),    // E5
  (midinote: 78, dur: 2.5, dynamic: \f),     // F#5
  (midinote: 74, dur: 0.5, dynamic: \f),     // D5
  (midinote: 71, dur: 0.5, dynamic: \mf),     // B4
  (midinote: 74, dur: 0.5, dynamic: \mf)      // D5
];
[
  heldFs,
  upperAnswer,
  heldFsVar,
  climax
];
)
