(
var project, analyzeData;
project = topEnvironment[\inDreams];

analyzeData = { |data, targetDb, targetPeakDb|
  var peak, rms, rmsGain, peakGain, gain;
  peak = data.collect { |x| x.abs }.maxItem;
  rms = (
    data.collect { |x| x.squared }.sum / data.size
  ).sqrt;
  rmsGain = targetDb.dbamp / rms;
  peakGain = targetPeakDb.dbamp / peak;
  gain = min(rmsGain, peakGain);
  (
    peak: peak,
    peakDb: peak.ampdb,
    rms: rms,
    rmsDb: rms.ampdb,
    targetDb: targetDb,
    targetPeakDb: targetPeakDb,
    rmsGain: rmsGain,
    peakGain: peakGain,
    gain: gain
  )
};

project[\utils][\sample] = (
  analyzeBuffer: { |buffer, targetDb = -20, targetPeakDb = -6, action|
    buffer.loadToFloatArray(action: { |data|
      var result;
      result = analyzeData.(data, targetDb, targetPeakDb);
      if(action.notNil) {
        action.value(result);
      };
    });
  },
  measure: { |sample, targetDb = -20, targetPeakDb = -6|
    sample[\buffer].loadToFloatArray(action: { |data|
      var result;
      result = analyzeData.(data, targetDb, targetPeakDb);
      "% peak: % dB   rms: % dB   rmsGain: %   peakGain: %   gain: %"
      .format(
          sample[\file],
          result[\peakDb].round(0.01),
          result[\rmsDb].round(0.01),
          result[\rmsGain].round(0.01),
          result[\peakGain].round(0.01),
          result[\gain].round(0.01)
      )
      .postln;
    });
  },
  measureSet: { |samples, targetDb = -20, targetPeakDb = -6|

    if(samples.isNil) {
      Error("sample set is nil").throw;
    };

    samples.do { |sample|
      project[\utils][\sample][\measure].(
        sample,
        targetDb,
        targetPeakDb
      );
    };
  };
);
)
