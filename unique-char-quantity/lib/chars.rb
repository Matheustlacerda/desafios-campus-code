class Chars
  def unique_quantity(text)
    text.split(" ").map { |letras| letras.split('').uniq.count}.sum
  end   
  
end