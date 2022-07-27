class Sequence
  def count_ordered(list)
    list.map do |player_info|
      player, days = player_info.split(':')
      [
        player,
        days
          .split(/\s/)
          .map(&:to_i)
          .sort
          .slice_when { |previous, current| current != previous + 1 }
          .map(&:count)
          .uniq
          .sort
          .join(' ')
      ]
    end 
      .sort_by {|_name, quantities| quantities.reverse }
      .last.join(':')
  end
end
