class Arrays
  def self.converte_impares_por(lista, numero)
    impar = []    
    impar_multiplicado = []
    
    lista.each.with_index { |number, index| if number % 2 != 0 then impar << number end  }    
    
    impar.each do |number|
      impar_multiplicado << number * numero
    end
    [impar,impar_multiplicado]                              
  end

  def self.converte_pares_por(lista, numero)
    par = [] 
    par_multiplicado = []   
    
    lista.map.with_index { |number, index| if number % 2 == 0 then par << number end  } 
   
    par.each do |number|
      par_multiplicado << number * numero
    end
    [par,par_multiplicado]               
  end      
      
end