(
{ |samples, sampleTools|

  { |midi|
    sampleTools[\resolveMidi].(
      samples[\susvib],
      midi
    )
  }
}
)
