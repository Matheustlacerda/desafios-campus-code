class AnagramCounter
  def count(list)
    palavras = list.split(' ').map { |letras| letras.split('') }
    anagramas = []
    palavras.each.with_index do |palavra1, index1|
      palavras.each.with_index do |palavra2, index2|
        next if index1 == index2
           if palavra1.sort == palavra2.sort
              palavra = palavra1.join('')
              anagramas << palavra unless anagramas.include?(palavra)
            end
          end
    end
anagramas.count
end
end
