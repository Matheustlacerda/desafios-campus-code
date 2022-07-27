class MutationCounter
  def calculate(dna_collection)
    counter, unmatch = 0, 0

    dna_collection.map.with_index { |dna, index|
      first = dna_collection[index][0].chars
      second = dna_collection[index][1].chars

      (first.size).times do |letter|
        if first[letter] != second[letter]
          unmatch += 1
        end
      end

      if counter < unmatch
        counter = unmatch
        unmatch = 0
      end
    }
    counter
  end
end
