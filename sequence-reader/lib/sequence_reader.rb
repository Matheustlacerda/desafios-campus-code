class SequenceReader
  def read(sequence, multiplier)
    multiplier.times do
      sequence = sequence
        .split('')
        .chunk{|number| number}
        .map{ |number, quantity| [quantity.size, number]}
        .join
    end
    sequence
  end
end

