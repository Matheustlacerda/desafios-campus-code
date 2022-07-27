class Finder
  def index_of(list, value)
    match = []

    list.map.with_index { |char, index|
      if char.include?(value)
        match << index
      end
  }

  match
  end
end