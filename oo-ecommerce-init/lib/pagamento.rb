class Pagamento
  attr_reader :produto, :preco, :quantidade
  attr_accessor :valor

  def initialize(produto: 'Sem nome', preco:, quantidade:)
    @produto = produto
    @preco = preco
    @quantidade = quantidade
    @valor = nil
    
  end

  def calcular_valor
   @valor = preco * quantidade
  end

  def aplicar_desconto(desconto)    
    @valor -= desconto
  end
end
