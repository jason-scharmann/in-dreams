{
  |synth, sampler, outBus, group,
  amp = 0.25|

  { |event|
    var out, samples;

    out = event.copy;

    out[\instrument] = synth;
    out[\out] = outBus;
    out[\group] = group;
    out[\amp] = amp;

    if(out[\midinote].isRest.not) {
      samples = out[\midinote].collect {
        |midi|
        sampler.(midi)
      };

      out[\buf] = samples.collect {
        |sample|
        sample[\buf]
      };

      out[\rate] = samples.collect {
        |sample|
        sample[\rate]
      };

      out[\sampleGain] =
      samples.collect {
        |sample|
        sample[\sampleGain]
      };
    };

    out
  }
}
