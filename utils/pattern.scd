(
var project;

project = topEnvironment[\inDreams];

project[\utils][\patterns] = (
  part: { |part|
    Pseq([
      Pseq(part[\first].collect {|phrase| Pseq(phrase, 1)}, 1),
      Pseq(part[\second].collect {|phrase| Pseq(phrase, 1)}, 1)
    ], 1)
  }
);
)
