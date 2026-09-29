(
var heldFs, upperAnswer, heldFsVar, climax;
heldFs = [
  (midinote: 62, dur: 0.5),     // D4
  (midinote: 64, dur: 0.5),     // E4
  (midinote: 66, dur: 5),       // F#4
  (midinote: Rest(0), dur: 0.5),
  (midinote: 66, dur: 0.5),     // F#4
  (midinote: 71, dur: 0.5),     // B4
  (midinote: 73, dur: 0.5)      // C#5
];
upperAnswer = [
  (midinote: 74, dur: 1.5),     // D5
  (midinote: 76, dur: 0.25),    // E5
  (midinote: 74, dur: 0.25),    // D5
  (midinote: 73, dur: 1),       // C#5
  (midinote: 69, dur: 1),       // A4
  (midinote: 66, dur: 2),       // F#4
  (midinote: 64, dur: 1),       // E4
  (midinote: 62, dur: 0.5),     // D4
  (midinote: 64, dur: 0.5)      // E4
];
heldFsVar = [
  (midinote: 66, dur: 6),       // F#4
  (midinote: Rest(0), dur: 0.5),
  (midinote: 66, dur: 0.5),     // F#4
  (midinote: 71, dur: 0.5),     // B4
  (midinote: 73, dur: 0.5)      // C#5
];
climax = [
  (midinote: 74, dur: 2),       // D5
  (midinote: 76, dur: 1.5),     // E5
  (midinote: 74, dur: 0.25),    // D5
  (midinote: 76, dur: 0.25),    // E5
  (midinote: 78, dur: 2.5),     // F#5
  (midinote: 74, dur: 0.5),     // D5
  (midinote: 71, dur: 0.5),     // B4
  (midinote: 74, dur: 0.5)      // D5
];
[
  heldFs,
  upperAnswer,
  heldFsVar,
  climax
];
)
