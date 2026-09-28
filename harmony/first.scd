(
var project;
var opening, answer, cadence;

project = topEnvironment[\inDreams];

opening = [
    (midinote: [57, 62, 66], dur: 2),  // A3 D4 F#4
    (midinote: [57, 61, 66], dur: 2),  // A3 C#4 F#4
    (midinote: [59, 62, 67], dur: 2),  // B3 D4 G4
    (midinote: [57, 62, 66], dur: 2)   // A3 D4 F#4
];

answer = [
    (midinote: [59, 62, 67], dur: 2),  // B3 D4 G4
    (midinote: [61, 64, 69], dur: 2),  // C#4 E4 A4
    (midinote: [57, 62, 66], dur: 2),  // A3 D4 F#4
    (midinote: [61, 64, 69], dur: 2)   // C#4 E4 A4
];

cadence = [
    (midinote: [59, 62, 67], dur: 2),  // B3 D4 G4
    (midinote: [59, 62, 66], dur: 1),  // B3 D4 F#4
    (midinote: [57, 62, 66], dur: 1),  // A3 D4 F#4
    (midinote: [61, 64, 69], dur: 2),  // C#4 E4 A4
    (midinote: [60, 64, 67], dur: 2)   // C4 E4 G4
];

project[\harmony][\first] = [
    opening,
    answer,
    opening,
    cadence
];
)
