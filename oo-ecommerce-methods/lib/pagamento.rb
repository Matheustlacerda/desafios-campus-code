class Pagamento
  attr_reader :produto, :quantidade, :valor

  def initialize(quantidade:, produto:, valor: 0)
    @quantidade = quantidade
    @produto = produto
    @valor = valor
  end

  def calcular_valor
    @valor = @quantidade * @produto.preco
    @produto.remove_estoque(@quantidade)
  end

  def aplicar_desconto(porcentagem)
    @valor -= (@valor * porcentagem)/100
  end
end

