class SpaceTrip
  def travel(planets, moves)
    mapped_planets = {}

    planets.split(/\n/).each do |sequence|
      first_planet, second_planet, distance =
        sequence.scan(/(\w+.?\w*)\spara\s(\w*.?\w*)\s\=\s(\d+)/).first

      mapped_planets[first_planet] ||= {}
      mapped_planets[second_planet] ||= {}
      mapped_planets[first_planet][second_planet] ||= distance.to_i
      mapped_planets[second_planet][first_planet] ||= distance.to_i
    end

    combination_size = mapped_planets.size-1
    mapped_planets.keys.map do |actual_planet|
      (0..combination_size).map do |i|
        travelled_planets = [actual_planet]
        (0..combination_size-1).map do
          next_planets = mapped_planets[actual_planet]
            .reject { |k,_v| travelled_planets.include?(k) }
            .sort_by { |_k, v| v }
          next_planet, next_distance = next_planets[i] || next_planets.first

          travelled_planets << next_planet
          actual_planet = next_planet
          next_distance
        end
      end
    end.flatten(1).sort_by{|v| [v.sum, v]}.first[0..moves-2].sum
  end
end