(
var heldFs, upperAnswer, heldFsVar, climax;
heldFs = [
  (midinote: 62, dur: 0.5, dynamic: \mp),     // D4
  (midinote: 64, dur: 0.5, dynamic: \mp),     // E4
  (midinote: 66, dur: 5, dynamic: \mp),       // F#4
  (midinote: Rest(0), dur: 0.5),
  (midinote: 66, dur: 0.5, dynamic: \mp),     // F#4
  (midinote: 71, dur: 0.5, dynamic: \mp),     // B4
  (midinote: 73, dur: 0.5, dynamic: \mp)      // C#5
];
upperAnswer = [
  (midinote: 74, dur: 1.5, dynamic: \mp),     // D5
  (midinote: 76, dur: 0.25, dynamic: \mp),    // E5
  (midinote: 74, dur: 0.25, dynamic: \mp),    // D5
  (midinote: 73, dur: 1, dynamic: \mp),       // C#5
  (midinote: 69, dur: 1, dynamic: \mp),       // A4
  (midinote: 66, dur: 2, dynamic: \mp),       // F#4
  (midinote: 64, dur: 1, dynamic: \mp),       // E4
  (midinote: 62, dur: 0.5, dynamic: \mp),     // D4
  (midinote: 64, dur: 0.5, dynamic: \mp)      // E4
];
heldFsVar = [
  (midinote: 66, dur: 6, dynamic: \mp),       // F#4
  (midinote: Rest(0), dur: 0.5, dynamic: \mp),
  (midinote: 66, dur: 0.5, dynamic: \mp),     // F#4
  (midinote: 71, dur: 0.5, dynamic: \mp),     // B4
  (midinote: 73, dur: 0.5, dynamic: \mp)      // C#5
];
climax = [
  (midinote: 74, dur: 2, dynamic: \mp),       // D5
  (midinote: 76, dur: 1.5, dynamic: \mp),     // E5
  (midinote: 74, dur: 0.25, dynamic: \mp),    // D5
  (midinote: 76, dur: 0.25, dynamic: \mp),    // E5
  (midinote: 78, dur: 2.5, dynamic: \mp),     // F#5
  (midinote: 74, dur: 0.5, dynamic: \mp),     // D5
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
