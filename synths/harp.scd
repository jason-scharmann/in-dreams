(
var project;

project = topEnvironment[\inDreams];

SynthDef(\inDreams_harp, {
    |out = 0, buf = 0, rate = 1,
     sampleGain = 1, amp = 1, pan = 0|

    var sig;

    sig = PlayBuf.ar(
        numChannels: 2,
        bufnum: buf,
        rate: BufRateScale.kr(buf) * rate,
        loop: 0,
        doneAction: Done.freeSelf
    );
    sig = BLowShelf.ar(sig, 250, 1, -5);
    sig = BHiShelf.ar(sig, 5000, 1, 1.5);

    sig = Balance2.ar(
        sig[0],
        sig[1],
        pan,
        sampleGain * amp
    );

    OffsetOut.ar(out, sig);
}).add;

project[\synths][\harp] = \inDreams_harp;
)
