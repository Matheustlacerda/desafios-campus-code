class Word
  def vowels_count(phrase)
    phrase.scan(/[áéíóúãõàaeiouy]/i).length
  end

  def consonants_count(phrase)
    phrase.scan(/[bcdfghjklmnpqrstvxwz]/i).length
  end
end
