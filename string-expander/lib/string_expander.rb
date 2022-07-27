class StringExpander
  def expand(instructions)
    instructions.scan(/([\(\d+x\)]+)([A-Z]+)/).map do |quantity, word|
      word * quantity.scan(/\d+/).map(&:to_i).reduce(:*)
    end.join
  end
end