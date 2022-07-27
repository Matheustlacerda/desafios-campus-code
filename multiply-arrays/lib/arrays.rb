class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.map.with_index {|_x, i| b = i == 0 ? 0 : i-1;n = (i+1) == array.count ? i : i+1; array[b]*array[n]}
  end
end