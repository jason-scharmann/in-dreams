(
var project;
project = topEnvironment[\inDreams];

SynthDef(\inDreams_cello, {
    |out = 0, buf = 0, rate = 1, gate = 1,
     sampleGain = 1, amp = 1, pan = 0,
     attack = 0.02, release = 0.20|
    var env, sig;

    env = EnvGen.kr(
        Env.asr(
            attackTime: attack,
            sustainLevel: 1,
            releaseTime: release
        ),
        gate,
        doneAction: Done.freeSelf
    );

    sig = PlayBuf.ar(
        numChannels: 2,
        bufnum: buf,
        rate: BufRateScale.kr(buf) * rate,
        loop: 0
    );
    sig = BPeakEQ.ar(sig, 350, 0.8, -2);
    sig = BHiShelf.ar(sig, 4000, 1, -2);
    sig = Balance2.ar( sig[0], sig[1], pan, sampleGain * amp);

    OffsetOut.ar( out, sig * env);
}).add;

project[\synths][\cello] = \inDreams_cello;
)
