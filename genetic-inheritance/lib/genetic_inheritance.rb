class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    combination = mixer(first_individual,second_individual)
    combination = calc_perc(combination)
  end

  def mixer(first, last)
    combination = []
    first.chars do |gamete1|
      last.chars do |gamete2|
        if gamete2 == gamete2.upcase && gamete1 == gamete1.downcase
          combination << gamete2 + gamete1
        else
          combination << gamete1 + gamete2
        end
      end
    end
    combination
  end

  def calc_perc(combination)
    combination_with_proporcion = []
    combination.uniq.each do |value|
      combination_with_proporcion <<
        [value, "#{combination.count(value)}/#{combination.length}".to_r]
    end
      combination_with_proporcion
  end
end
