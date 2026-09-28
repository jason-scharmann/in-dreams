(
var project, sampleDir;
project = topEnvironment[\inDreams];
sampleDir = project[\paths][\vsco] +/+ "Strings/Cello Section/susvib";
project[\samples][\cello] = (
  susvib: [
    (
      root: 36,
      layer: \v1,
      file: "susvib_C1_v1_1.wav",
      gain: 2.95,
      buffer: nil
    ),
    (
      root: 40,
      layer: \v1,
      file: "susvib_E1_v1_1.wav",
      gain: 7.27,
      buffer: nil
    ),
    (
      root: 43,
      layer: \v1,
      file: "susvib_G1_v1_1.wav",
      gain: 3.76,
      buffer: nil
    ),
    (
      root: 47,
      layer: \v1,
      file: "susvib_B1_v1_1.wav",
      gain: 3.79,
      buffer: nil
    ),
    (
      root: 50,
      layer: \v1,
      file: "susvib_D2_v1_1.wav",
      gain: 3.77,
      buffer: nil
    ),
    (
      root: 53,
      layer: \v1,
      file: "susvib_F2_v1_1.wav",
      gain: 5.95,
      buffer: nil
    ),
    (
      root: 57,
      layer: \v1,
      file: "susvib_A2_v1_1.wav",
      gain: 5.82,
      buffer: nil
    ),
    (
      root: 60,
      layer: \v1,
      file: "susvib_C3_v1_1.wav",
      gain: 5.11,
      buffer: nil
    ),
    (
      root: 64,
      layer: \v1,
      file: "susvib_E3_v1_1.wav",
      gain: 4.24,
      buffer: nil
    ),
    (
      root: 67,
      layer: \v1,
      file: "susvib_G3_v1_1.wav",
      gain: 4.47,
      buffer: nil
    ),
    (
      root: 71,
      layer: \v1,
      file: "susvib_B3_v1_1.wav",
      gain: 7.28,
      buffer: nil
    ),
    (
      root: 74,
      layer: \v1,
      file: "susvib_D4_v1_1.wav",
      gain: 6.80,
      buffer: nil
    ),
    (
      root: 77,
      layer: \v1,
      file: "susvib_F4_v1_1.wav",
      gain: 6.97,
      buffer: nil
    ),
  ]
);
project[\samples][\cello][\susvib].do { |sample|
  sample[\buffer] = Buffer.read(
    s,
    sampleDir +/+ sample[\file]
  );
};
)
