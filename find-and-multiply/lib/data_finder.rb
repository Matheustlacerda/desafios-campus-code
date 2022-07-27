class DataFinder
  def find_and_multiply(list)

    list.combination(2).map do |number1, number2|
      if number1 - number2 == 1984 || number2 - number1 == 1984
        number1 * number2
      end
    end.compact.first

  end
end
