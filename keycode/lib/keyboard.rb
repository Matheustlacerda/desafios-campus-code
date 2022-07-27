class Keyboard
  def initialize
    @row = 1
    @column = 1
    @password = ''
    @row_size = 0
    @column_size = 0
  end

  def keycode(instructions, keypad)
    update_sizes(keypad)
    instructions.split(' ').each do |instruction|
      instruction.chars.each { |step| change_position(step) }
      @password << keypad[@row][@column]
    end

    @password
  end

  def update_sizes(keypad)
    @row_size = (keypad.size - 1)
    @column_size = (keypad.first.size - 1)
  end

  def change_position(step)
    if step == 'C' && @row > 0
      @row = @row - 1
    elsif step == 'B' && @row < @row_size
      @row = @row + 1
    elsif step == 'E' && @column > 0
      @column = @column - 1
    elsif step == 'D' && @column < @column_size
      @column = @column + 1
    end
  end
end
