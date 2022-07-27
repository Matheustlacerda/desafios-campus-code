class ArrayUtils
      def self.multiplos(quantidade = 10, numero)
      (1..quantidade).to_a.map { |level| level * numero }
    end
  
    def self.tabuada(quantidade)
     (1..quantidade).to_a.map { |numero| multiplos(numero) }
    end
  end