(
var opening, answer, cadence;

opening = [
  (midinote: 66, dur: 1, dynamic: \p),       // F#4
  (midinote: 69, dur: 1, dynamic: \p),       // A4
  (midinote: 66, dur: 1, dynamic: \p),       // F#4
  (midinote: 64, dur: 1, dynamic: \p),       // E4
  (midinote: 62, dur: 2, dynamic: \p),       // D4
  (midinote: Rest(0), dur: 1),
  (midinote: 66, dur: 0.5, dynamic: \p),     // F#4
  (midinote: 69, dur: 0.5, dynamic: \p)      // A4
];

answer = [
  (midinote: 71, dur: 1, dynamic: \p),       // B4
  (midinote: 74, dur: 1, dynamic: \p),       // D5
  (midinote: 73, dur: 1, dynamic: \p),       // C#5
  (midinote: 69, dur: 1, dynamic: \p),       // A4
  (midinote: 66, dur: 2, dynamic: \mp),       // F#4
  (midinote: 64, dur: 1, dynamic: \mp),       // E4
  (midinote: 62, dur: 0.5, dynamic: \mp),     // D4
  (midinote: 64, dur: 0.5, dynamic: \mp)      // E4
];

cadence = [
  (midinote: 71, dur: 2.5, dynamic: \mp),     // B4
  (midinote: 71, dur: 0.5, dynamic: \mp),     // B4
  (midinote: 69, dur: 0.5, dynamic: \mf),     // A4
  (midinote: 66, dur: 0.5, dynamic: \mf),     // F#4
  (midinote: 64, dur: 3, dynamic: \mf),       // E4
  (midinote: Rest(0), dur: 1)
];

[
  opening,
  answer,
  opening,
  cadence
];
)
