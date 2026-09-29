(
var opening, answer, cadence;

opening = [
  (midinote: 66, dur: 1),       // F#4
  (midinote: 69, dur: 1),       // A4
  (midinote: 66, dur: 1),       // F#4
  (midinote: 64, dur: 1),       // E4
  (midinote: 62, dur: 2),       // D4
  (midinote: Rest(0), dur: 1),
  (midinote: 66, dur: 0.5),     // F#4
  (midinote: 69, dur: 0.5)      // A4
];

answer = [
  (midinote: 71, dur: 1),       // B4
  (midinote: 74, dur: 1),       // D5
  (midinote: 73, dur: 1),       // C#5
  (midinote: 69, dur: 1),       // A4
  (midinote: 66, dur: 2),       // F#4
  (midinote: 64, dur: 1),       // E4
  (midinote: 62, dur: 0.5),     // D4
  (midinote: 64, dur: 0.5)      // E4
];

cadence = [
  (midinote: 71, dur: 2.5),     // B4
  (midinote: 71, dur: 0.5),     // B4
  (midinote: 69, dur: 0.5),     // A4
  (midinote: 66, dur: 0.5),     // F#4
  (midinote: 64, dur: 3),       // E4
  (midinote: Rest(0), dur: 1)
];

[
  opening,
  answer,
  opening,
  cadence
];
)
