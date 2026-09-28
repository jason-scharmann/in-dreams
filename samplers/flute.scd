(
{ |samples, sampleTools|

  { |midi|
    sampleTools[\resolveMidi].(
      samples[\susNV],
      midi
    )
  }
}
)
