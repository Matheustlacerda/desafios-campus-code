class TriangleValidator
  def validate_list(list)
    numbers = list.split(' ').map(&:to_i)
    triangulo_valores = []
    numbers.each.with_index do |number1, index1|
      numbers.each.with_index do |number2, index2|
        next if index1 == index2     
        numbers.each do |n| 
          next unless (n != number1 && n != number2 && n < (number1 + number2) && number1 < (n+number2) && number2 < (n+number1)) # senao for numero 1, numero 2 e tiver resultado inferior "sai da interacao"
          perfect_final = [n, number1, number2].sort
          triangulo_valores << perfect_final unless triangulo_valores.include?(perfect_final)
        end
      end
    end
    
    triangulo_valores.map{|triang| triang.reduce(:*) }
  end
end

