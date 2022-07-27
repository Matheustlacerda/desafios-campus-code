class Assembly
  def compile(instructions)
   
valor = 0
linha = 0

instructions.split("\n").each_with_index do |instruction, index|
  next unless index == linha
    modifier = instruction.scan(/[\-]?\d+/).last.to_i
    linha += 1
    if instruction =~ /mov/
      valor = modifier
    elsif instruction =~ /add/
      valor += modifier
    elsif instruction =~ /sub/
      valor -= modifier
    else
      linha = modifier - 1
    end
  end
valor
  end
end
