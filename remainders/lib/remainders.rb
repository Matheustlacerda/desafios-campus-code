class Remainders
  def calculate(string)
    string.split.map(&:to_i).combination(2).to_a.map do |number1, number2|
      if number1 % number2 == 0 || number2 % number1 == 0

        number1 + number2
      end
    end.compact.sum
  end
end