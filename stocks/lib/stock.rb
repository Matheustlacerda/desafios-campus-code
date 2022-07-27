class Stock
  def evaluate(stock)
    stock = stock.split(':')
    preco_acao = stock[1].split(' ').map(&:to_i)
    menor_preco = preco_acao[0]
    maior_lucro = preco_acao[1] - preco_acao[0]
    hora_da_venda = 0
    preco_acao.each_with_index do |valor, index|
    if index < 2 then next end
      if index == 0 then next end
        preco_atual = valor
        ganho_potencial = preco_atual - menor_preco
        if maior_lucro < ganho_potencial
          maior_lucro = [maior_lucro, ganho_potencial].max
          hora_da_venda = index
        end
        menor_preco = [preco_atual, menor_preco].min
      end      
    "#{stock[0]}:#{maior_lucro}"
  end

  def evaluate_stocks(stocks)
    stocks
      .split("\n")
      .map { |item| evaluate(item) }
      .sort_by {|stck| stck.split(':')[-1].to_i }
      .last
  end
end
