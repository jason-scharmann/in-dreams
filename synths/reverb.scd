(
var project;

project = topEnvironment[\inDreams];

SynthDef(\inDreams_reverb, {
    |in = 0, out = 0,
     mix = 0.25, room = 0.6, damp = 0.5|

    var sig;

    sig = In.ar(in, 2);

    sig = FreeVerb2.ar(
        sig[0],
        sig[1],
        mix,
        room,
        damp
    );

    Out.ar(out, sig);
}).add;

project[\synths][\reverb] = \inDreams_reverb;
)
