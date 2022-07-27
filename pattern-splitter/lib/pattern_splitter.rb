class PatternSplitter
  def split_pattern(string)
    pattern = string.chars.uniq.first(2)
    list = []
    sequence = ''
    string.chars.each do |coordinar|
      if pattern.include?(coordinar) && !sequence.empty? && !pattern.include?(sequence[-1])
        list << sequence
        sequence = coordinar
      else
        sequence << coordinar
      end
    end

    list << sequence if sequence.size > 1

    list
  end
end
