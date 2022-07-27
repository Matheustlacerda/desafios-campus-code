class MisteryNumber  
  def calculate(operation)

    equation, result = operation.split('').map(&:strip).join.split('=')
    operator = equation.scan(/\?(\D)|(\+|\*|\/)\?|.(\D)\?/).flatten.compact.first
    equation = equation.scan(/\D?\d+/).map{|x| x =~ /^\d+|\+\d+/ ? "-#{x.gsub('+', '')}" : x.gsub(/\-/,'+') }
    case_operator = {
      "*" => equation.join.include?('/') ? "-1*(#{result}/(#{equation.join}))" : "-1*((#{result}#{equation[0..-2].join})/#{equation[-1].gsub('/','')})",
      "/" => "-1*(#{equation.join}/(#{result}))",
      "-" => "-1*(#{result}#{equation.join})",
      "+" => "#{result}#{equation.join}"
    }

    eval case_operator[operator]
    
  end
end