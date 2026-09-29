{
  |synth, sampler, outBus, group,
  amp = 0.25|

  var dynamics;

  dynamics = (
    pp: 0.25,
    p: 0.40,
    mp: 0.63,
    mf: 1.00,
    f: 1.26,
    ff: 1.58
  );

  { |event|
    var out, dynamic, dynamicAmp, samples;

    out = event.copy;

    dynamic = out[\dynamic];

    dynamicAmp = if(dynamic.isNil) {
        1
    } {
        dynamics[dynamic] ?? {
            Error(
                "unknown dynamic: %"
                .format(dynamic)
            ).throw;
        }
    };

    out[\instrument] = synth;
    out[\out] = outBus;
    out[\group] = group;
    out[\amp] = amp * dynamicAmp;

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
