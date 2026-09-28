(
{ |samples, sampleTools|

  { |midi|
    sampleTools[\resolveMidi].(
      samples[\mf],
      midi
    )
  }
}
)
