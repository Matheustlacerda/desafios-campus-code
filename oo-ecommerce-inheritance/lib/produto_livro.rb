class ProdutoLivro < Produto
    attr_reader :autor, :genero, :paginas
    def initialize(nome:, preco:, estoque:, autor:, genero:, paginas:)
        super(nome: nome, preco: preco, estoque: estoque)
        @autor = autor
        @genero = genero
        @paginas = paginas
    end

end