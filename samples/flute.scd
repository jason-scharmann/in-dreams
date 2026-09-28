(
var project, sampleDir;
project = topEnvironment[\inDreams];
sampleDir = project[\paths][\vsco] +/+ "Woodwinds/Flute/susNV";

project[\samples][\flute] = (
  susNV: [
    (
      root: 60,
      layer: \v1,
      file: "LDFlute_susNV_C3_v1_1.wav",
      gain: 30.90,
      buffer: nil
    ),
    (
      root: 64,
      layer: \v1,
      file: "LDFlute_susNV_E3_v1_1.wav",
      gain: 27.04,
      buffer: nil
    ),
    (
      root: 69,
      layer: \v1,
      file: "LDFlute_susNV_A3_v1_1.wav",
      gain: 7.80,
      buffer: nil
    ),
    (
      root: 72,
      layer: \v1,
      file: "LDFlute_susNV_C4_v1_1.wav",
      gain: 3.80,
      buffer: nil
    ),
    (
      root: 76,
      layer: \v1,
      file: "LDFlute_susNV_E4_v1_1.wav",
      gain: 2.24,
      buffer: nil
    ),
    (
      root: 81,
      layer: \v1,
      file: "LDFlute_susNV_A4_v1_1.wav",
      gain: 1.79,
      buffer: nil
    ),
    (
      root: 84,
      layer: \v1,
      file: "LDFlute_susNV_C5_v1_1.wav",
      gain: 2.18,
      buffer: nil
    ),
    (
      root: 88,
      layer: \v1,
      file: "LDFlute_susNV_E5_v1_1.wav",
      gain: 2.80,
      buffer: nil
    )
  ]
);

project[\samples][\flute][\susNV].do { |sample|
  sample[\buffer] = Buffer.read(
    s,
    sampleDir +/+ sample[\file]
  );
};
)
