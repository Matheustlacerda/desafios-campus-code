class CharacterShifter
  def execute(instructions, collection)
    instructions.split(/\s/).each do |instruction|
      operation = instruction.scan(/\<\>|\<|\>/).first
      lines = instruction.split(':')[0].scan(/\d+/).map(&:to_i)
      position = instruction.split(':')[1].scan(/\d+/).map(&:to_i).first

      if operation.eql?('<>')
        shifter_in_columns(collection, lines, position)
      else
        shifter_in_line(collection, lines, position, operation)
      end
    end
    collection
  end

  def shifter_in_line(collection, lines, position, operation)
    lines.each do |line|
      chars = collection[line].chars
      position = operation.eql?('<') ? position : (chars.count - position)
      collection[line] = (chars.drop(position) + chars.take(position)).join
    end
  end

  def shifter_in_columns(collection, lines, position)
    letters = lines.map{|line| collection[line][position] }
    collection[lines.first][position] = letters.last
    collection[lines.last][position] = letters.first
  end
end
