(
var opening, answer, return, cadence;
opening = [
    (midinote: [57, 62, 66], dur: 2, dynamic: \mp),  // A3 D4 F#4
    (midinote: [57, 61, 66], dur: 2, dynamic: \mp),  // A3 C#4 F#4
    (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
    (midinote: [57, 62, 66], dur: 2, dynamic: \mp)   // A3 D4 F#4
];
answer = [
    (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
    (midinote: [61, 64, 69], dur: 2, dynamic: \mp),  // C#4 E4 A4
    (midinote: [57, 62, 66], dur: 2, dynamic: \mp),  // A3 D4 F#4
    (midinote: [61, 64, 69], dur: 2, dynamic: \mp)   // C#4 E4 A4
];
return = [
    (midinote: [57, 62, 66], dur: 2, dynamic: \mp),  // A3 D4 F#4
    (midinote: [57, 61, 66], dur: 2, dynamic: \mp),  // A3 C#4 F#4
    (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
    (midinote: [57, 62, 66], dur: 2, dynamic: \mp)   // A3 D4 F#4
];
cadence = [
    (midinote: [59, 62, 67], dur: 2, dynamic: \mp),  // B3 D4 G4
    (midinote: [59, 62, 66], dur: 1, dynamic: \mp),  // B3 D4 F#4
    (midinote: [57, 62, 66], dur: 1, dynamic: \mp),  // A3 D4 F#4
    (midinote: [61, 64, 69], dur: 2, dynamic: \mp),  // C#4 E4 A4
    (midinote: [60, 64, 67], dur: 2, dynamic: \mp)   // C4 E4 G4
];
[
    opening,
    answer,
    return,
    cadence
];
)
