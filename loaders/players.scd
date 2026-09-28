(
var root;
root = topEnvironment[\inDreams][\paths][\root];

[
    "player/melody.scd",
    "player/bass.scd",
    "player/harmony.scd"
].do { |file|
    (root +/+ file).load;
};

)
