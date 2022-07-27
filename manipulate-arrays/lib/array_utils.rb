class ArrayUtils

  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(divisor1, divisor2)
    divisao1 = []
    divisao2 = []
    divisao3 = []
    (1..50).each do |numero|
      if numero % divisor1 == 0 && numero % divisor2 == 0 
      divisao1 << numero
      elsif numero % divisor1 == 0 && numero % divisor2 != 0
      divisao2 << numero
      elsif numero % divisor2 == 0 && numero % divisor1 != 0
      divisao3 << numero
      end      
    end 
    [divisao1,divisao2,divisao3]
  end

  def self.soma(list)
    list.sum   
  end

  def self.combinar(valor1,valor2)
    combinar = []
    (0..valor1.count-1).each do |palavra1|
      (0..valor2.count-1).each do |palavra2|
        combinar << [valor1[palavra1], valor2[palavra2]]
      end  
    end
    combinar
  end
end
