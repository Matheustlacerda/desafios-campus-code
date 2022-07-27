class Arrays  
  def inverse_strings(array)
    array.reject.with_index do |word, i|
    array.any? { |word2| array.index(word2) != i && (word.eql?(word2) || word.eql?(word2.reverse)) }
    end
  end
end

