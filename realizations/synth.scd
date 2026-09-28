{
  |synth, outBus, group,
  amp = 0.1, legato = 0.9|

  { |event|
    var out;

    out = event.copy;

    out[\instrument] = synth;
    out[\out] = outBus;
    out[\group] = group;
    out[\amp] = amp;
    out[\legato] = legato;

    out
  }
}
