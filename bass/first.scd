(
var opening, answer, cadence;
opening = [
  (midinote: 50, dur: 2, dynamic: \p),   // D3
  (midinote: 42, dur: 2, dynamic: \p),   // F#2
  (midinote: 43, dur: 2, dynamic: \p),   // G2
  (midinote: 42, dur: 2, dynamic: \p)    // F#2
];
answer = [
  (midinote: 43, dur: 2, dynamic: p),   // G2
  (midinote: 45, dur: 2, dynamic: \p),   // A2
  (midinote: 42, dur: 2, dynamic: \p),   // F#2
  (midinote: 52, dur: 2, dynamic: \p)    // E3
];
cadence = [
  (midinote: 43, dur: 2),   // G2
  (midinote: 42, dur: 1),   // F#2
  (midinote: 42, dur: 1),   // F#2
  (midinote: 52, dur: 2),   // E3
  (midinote: 52, dur: 2)    // E3
];
[
  opening,
  answer,
  opening,
  cadence
];
)
