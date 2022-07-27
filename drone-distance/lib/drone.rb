class Drone
  def manhattan_distance(instructions)
    distancias = instructions.split(' ')
    soma_norte = 0
    soma_sul = 0
    soma_leste = 0
    soma_oeste = 0
    (0..distancias.size-1).each do |valor|
    if distancias[valor].include?('N')
      soma_norte += distancias[valor].delete('N').to_i
      elsif distancias[valor].include?('S')
        soma_sul += distancias[valor].delete('S').to_i
      elsif distancias[valor].include?('L')
        soma_leste += distancias[valor].delete('L').to_i
    else 
      soma_oeste += distancias[valor].delete('O').to_i
    end
    end
(soma_norte-soma_sul).abs + (soma_leste-soma_oeste).abs
  end
end
