{
  |synth, sampler, outBus, group,
  amp = 0.6, legato = 0.9|

  { |event|
    var out, sample;

    out = event.copy;

    out[\instrument] = synth;
    out[\out] = outBus;
    out[\group] = group;
    out[\amp] = amp;
    out[\legato] = legato;

    if(out[\midinote].isRest.not) {
      sample = sampler.(
        out[\midinote]
      );

      out[\buf] = sample[\buf];
      out[\rate] = sample[\rate];
      out[\sampleGain] =
      sample[\sampleGain];
    };

    out
  }
}
