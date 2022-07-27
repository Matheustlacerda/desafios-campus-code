class ElementSwap
  def switch(letters, instructions)
  instructions.split(/\n/).each { |instruction|
    letters[instruction.split('<>').first.to_i],
    letters[instruction.split('<>').last.to_i] =
      letters[instruction.split('<>').last.to_i],
      letters[instruction.split('<>').first.to_i]
}
  letters
  end
end
