class BinaryCounter
  def read(values_sequence)
    values_sequence
    .split('-')
    .map do |sequence|
      last_number = nil

      sequence.to_i.to_s(2)
        .tap {|binary_sequence| last_number = binary_sequence[-1] }
        .split('')
        .chunk_while { |n0, n1| n0 == n1 }
        .select {|n| n.include?(last_number) }
        .sort_by {|i| -i.size }
        .first
        .size
    end.join
  end
end