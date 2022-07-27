class DataFinder
  def find_and_sum(list, *numbers)
    list.map do |sequence|
      sequence.split('').tally.values.uniq.sum {|counter| numbers.include?(counter) ? 1 : 0}
    end.sum
  end
end
