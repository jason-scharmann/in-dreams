(
var project, sampleDir;

project = topEnvironment[\inDreams];

sampleDir =
    project[\paths][\vsco]
    +/+ "Strings/Harp";

project[\samples][\harp] = (
    mf: [
        (
            root: 48,
            layer: \mf,
            file: "KSHarp_C3_mf.wav",
            gain: 31.70,
            buffer: nil
        ),
        (
            root: 52,
            layer: \mf,
            file: "KSHarp_E3_mf.wav",
            gain: 11.54,
            buffer: nil
        ),
        (
            root: 55,
            layer: \mf,
            file: "KSHarp_G3_mf.wav",
            gain: 7.56,
            buffer: nil
        ),
        (
            root: 59,
            layer: \mf,
            file: "KSHarp_B3_mf.wav",
            gain: 8.31,
            buffer: nil
        ),
        (
            root: 62,
            layer: \mf,
            file: "KSHarp_D4_mf.wav",
            gain: 5.30,
            buffer: nil
        ),
        (
            root: 65,
            layer: \mf,
            file: "KSHarp_F4_mf.wav",
            gain: 5.21,
            buffer: nil
        ),
        (
            root: 69,
            layer: \mf,
            file: "KSHarp_A4_mf.wav",
            gain: 3.05,
            buffer: nil
        ),
        (
            root: 72,
            layer: \mf,
            file: "KSHarp_C5_mf.wav",
            gain: 3.61,
            buffer: nil
        )
    ]
);

project[\samples][\harp][\mf].do { |sample|
    sample[\buffer] = Buffer.read(
        s,
        sampleDir +/+ sample[\file]
    );
};
)
