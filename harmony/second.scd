(
var heldFs, upperAnswer, heldFsVar, climax;
heldFs = [
  (midinote: [59, 62, 66], dur: 2, dynamic: \mp),  // B3 D4 F#4
  (midinote: [61, 64, 69], dur: 2, dynamic: \mp),  // C#4 E4 A4
  (midinote: [59, 62, 66], dur: 2, dynamic: \mp),  // B3 D4 F#4
  (midinote: [61, 64, 69], dur: 2, dynamic: \mp)   // C#4 E4 A4
];
upperAnswer = [
  (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
  (midinote: [61, 64, 69], dur: 2, dynamic: \mp),  // C#4 E4 A4
  (midinote: [57, 62, 66], dur: 2, dynamic: \mp),  // A3 D4 F#4
  (midinote: [61, 64, 69], dur: 2, dynamic: \mp)   // C#4 E4 A4
];
heldFsVar = [
  (midinote: [59, 62, 66], dur: 2, dynamic: \mp),  // B3 D4 F#4
  (midinote: [61, 64, 69], dur: 2, dynamic: \mp),  // C#4 E4 A4
  (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
  (midinote: [59, 62, 66], dur: 2, dynamic: \mp)   // B3 D4 F#4
];
climax = [
  (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
  (midinote: [61, 64, 69], dur: 2, dynamic: \mp),  // C#4 E4 A4
  (midinote: [59, 62, 66], dur: 2, dynamic: \mf),  // B3 D4 F#4
  (midinote: [59, 62, 67], dur: 2, dynamic: \mf)   // B3 D4 G4
];
[
  heldFs,
  upperAnswer,
  heldFsVar,
  climax
];
)
