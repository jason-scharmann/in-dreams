(
var project, source;
project = topEnvironment[\inDreams];
source = project[\utils][\patterns][\part].(project[\bass]);

project[\player][\bass] = source.collect { |event|
    var out, sample;
    out = event.copy;

    out[\instrument] = project[\synths][\cello];
    out[\out] = project[\buses][\mix];
    out[\group] = project[\groups][\sources];
    out[\amp] = 0.5;
    out[\legato] = 1;

    if(out[\midinote].isRest.not) {
        sample = project[\samplers][\cello].(
            out[\midinote]
        );

        out[\buf] = sample[\buf];
        out[\rate] = sample[\rate];
        out[\sampleGain] = sample[\sampleGain];
    };

    out
};
)
