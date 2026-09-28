(
var project;
project = topEnvironment[\inDreams];

SynthDef(\inDreams_flute, {
    |out = 0, buf = 0, rate = 1, gate = 1,
     sampleGain = 1, freq = 440,
     amp = 1, pan = 0, supportAmp = 0.02,
     attack = 0.02, release = 0.20|
    var env, sig, support;

    env = EnvGen.kr(
        Env.asr(attack, 1, release),
        gate,
        doneAction: Done.freeSelf
    );

    sig = PlayBuf.ar(
      numChannels: 2, bufnum: buf,
      rate: BufRateScale.kr(buf) * rate, loop: 0
    );
    sig = BLowShelf.ar(sig, 350, 1, -2);
    sig = BPeakEQ.ar(sig, 2500, 0.7, 1.5);

    sig = Balance2.ar(sig[0], sig[1], pan, sampleGain * amp);

    support = SinOsc.ar(freq) * (amp * supportAmp);
    support = Pan2.ar(support, pan);

    OffsetOut.ar( out, (sig + support) * env);
}).add;

project[\synths][\flute] = \inDreams_flute;
)
