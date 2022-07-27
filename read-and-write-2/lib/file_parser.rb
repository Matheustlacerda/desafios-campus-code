class FileParser
    def to_binary_file(string)     
        binarios = string.split(';')   
        binarios = binarios.map { |numero| numero.to_i}
        binarios = binarios.map { |numero| numero.to_s(2)} 
        File.open("data/data.txt", 'w') do |lines|
            lines.puts(binarios)
        end
        File.open("data/data.txt")
    end
end
