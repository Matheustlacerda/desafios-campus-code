class FileParser
    def to_integer(number)
        number.to_i(2)
    end

    def convert(arquivo)
        converter = File.read(arquivo).split
        converter.map { |numero| numero.to_i(2)}.sum
    end
end
