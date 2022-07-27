class Arrays
  def self.multiplica_indices(array)
    array.map.with_index { |number, index| number*index }
  end
end
