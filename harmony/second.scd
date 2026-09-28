(
var project;
var heldFs, upperAnswer, heldFsVar, climax;

project = topEnvironment[\inDreams];

heldFs = [
    (midinote: [59, 62, 66], dur: 2),  // B3 D4 F#4
    (midinote: [61, 64, 69], dur: 2),  // C#4 E4 A4
    (midinote: [59, 62, 66], dur: 2),  // B3 D4 F#4
    (midinote: [61, 64, 69], dur: 2)   // C#4 E4 A4
];

upperAnswer = [
    (midinote: [59, 62, 67], dur: 2),  // B3 D4 G4
    (midinote: [61, 64, 69], dur: 2),  // C#4 E4 A4
    (midinote: [57, 62, 66], dur: 2),  // A3 D4 F#4
    (midinote: [61, 64, 69], dur: 2)   // C#4 E4 A4
];

heldFsVar = [
    (midinote: [59, 62, 66], dur: 2),  // B3 D4 F#4
    (midinote: [61, 64, 69], dur: 2),  // C#4 E4 A4
    (midinote: [59, 62, 67], dur: 2),  // B3 D4 G4
    (midinote: [59, 62, 66], dur: 2)   // B3 D4 F#4
];

climax = [
    (midinote: [59, 62, 67], dur: 2),  // B3 D4 G4
    (midinote: [61, 64, 69], dur: 2),  // C#4 E4 A4
    (midinote: [59, 62, 66], dur: 2),  // B3 D4 F#4
    (midinote: [59, 62, 67], dur: 2)   // B3 D4 G4
];

project[\harmony][\second] = [
    heldFs,
    upperAnswer,
    heldFsVar,
    climax
];
)
