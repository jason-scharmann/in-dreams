(
var project;
project = topEnvironment[\inDreams];

project[\samplers][\flute] = { |midi|
    var samples, index, sample;

    samples = project[\samples][\flute][\susNV];

    index = samples.minIndex { |item|
        (item[\root] - midi).abs
    };

    sample = samples[index];

    (
        midinote: midi,
        root: sample[\root],
        buf: sample[\buffer],
        sampleGain: sample[\gain],
        rate: (midi - sample[\root]).midiratio
    )
};
)
