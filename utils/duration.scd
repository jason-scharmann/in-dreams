(
var closeEnough;
var eventBeats;
var totalBeats;
var assertBeats;


closeEnough = {
    |actual, expected, tolerance = 0.000001|

    (actual - expected).abs < tolerance
};


eventBeats = { |event|
    var dur;

    dur = event[\dur];

    if(dur.isNil) {
        Error(
            "event is missing \\dur"
        ).throw;
    };

    if(dur <= 0) {
        Error(
            "event has invalid duration: %"
            .format(dur)
        ).throw;
    };

    dur
};


totalBeats = { |events|
    var total;

    total = 0;

    events.do { |event|
        total = total + eventBeats.(event);
    };

    total
};


assertBeats = {
    |actual, expected, label = "material"|

    if(closeEnough.(actual, expected).not) {
        Error(
            "% has % beats; expected %"
            .format(
                label,
                actual,
                expected
            )
        ).throw;
    };

    actual
};


(
    eventBeats: eventBeats,
    totalBeats: totalBeats,
    assertBeats: assertBeats
)
)
