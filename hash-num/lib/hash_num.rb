class HashNum
  def find_sequence(num_set, list)
    list.map do |word| 
      words_hash = num_set.dup 
      keys = word.chars.map do |letter|
        words_hash.find do |key, values|
          found = values.include?(letter)
          words_hash.delete(key)
          found
        end&.first
      end.compact

      keys.size == word.size ? keys.join : nil
    end
  end
end