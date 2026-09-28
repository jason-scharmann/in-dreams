(
var project, name;
project = topEnvironment[\inDreams];
name = \inDreams_chipBass;
project[\synths][\chipBass] = name;

SynthDef(name, {
    |out = 0, freq = 440, amp = 1,
     gate = 1, pan = 0|

    var sig, env;

    env = EnvGen.kr(
        Env.asr(0.005, 1, 0.08),
        gate,
        doneAction: Done.freeSelf
    );

    sig = LFTri.ar(freq);

    OffsetOut.ar(
        out,
        Pan2.ar( sig * env * amp, pan)
    );
}).add;
)
