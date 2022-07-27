class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    cleaned = 0
    level = (0..levels-1).to_a
    window = (0..windows_per_level-1).to_a

    coordinates.split("\n").each { |window_finder|
      window_finder.each_char { |coordinate|
        if coordinate == 'B' && level != 1
          level = level.each_slice(level.size.div(2)).to_a.first
        elsif coordinate == 'T' && level != 1
          level = level.each_slice(level.size.div(2)).to_a.last
        elsif coordinate == 'D' && window != 1
          window = window.each_slice(window.size.div(2)).to_a.last
        elsif coordinate == 'E' && window != 1
          window = window.each_slice(window.size.div(2)).to_a.first
        end
    }
      if (level + window).sum % 2 == 0
        cleaned += 1
        level = (0..levels-1).to_a
        window = (0..windows_per_level-1).to_a
      else
        level = (0..levels-1).to_a
        window = (0..windows_per_level-1).to_a
      end
    }

    cleaned
  end
end
