(
var project;
var opening, answer, cadence;

project = topEnvironment[\inDreams];

opening = [
    (midinote: 50, dur: 2),   // D3
    (midinote: 42, dur: 2),   // F#2
    (midinote: 43, dur: 2),   // G2
    (midinote: 42, dur: 2)    // F#2
];

answer = [
    (midinote: 43, dur: 2),   // G2
    (midinote: 45, dur: 2),   // A2
    (midinote: 42, dur: 2),   // F#2
    (midinote: 52, dur: 2)    // E3
];

cadence = [
    (midinote: 43, dur: 2),   // G2
    (midinote: 42, dur: 1),   // F#2
    (midinote: 42, dur: 1),   // F#2
    (midinote: 52, dur: 2),   // E3
    (midinote: 52, dur: 2)    // E3
];

project[\bass][\first] = [
    opening,
    answer,
    opening,
    cadence
];
)
