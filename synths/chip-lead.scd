(
var project, name;
project = topEnvironment[\inDreams];
name = \inDreams_chipLead;
project[\synths][\chipLead] = name;

SynthDef(name, {
    |out = 0, freq = 440, amp = 1,
     gate = 1, pan = 0|

    var sig, env;

    env = EnvGen.kr(
        Env.asr(0.005, 1, 0.05),
        gate,
        doneAction: Done.freeSelf
    );

    sig = Pulse.ar( freq, width: 0.25);

    OffsetOut.ar(
        out,
        Pan2.ar(sig * env * amp, pan)
    );
}).add;
)
