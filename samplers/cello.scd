(
var project;

project = topEnvironment[\inDreams];

project[\samplers][\cello] = { |midi|
    var samples, index, sample;

    samples = project[\samples][\cello][\susvib];

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
