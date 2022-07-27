class Numbers
  def sum_text(lines)
      lines.split("\n").map{ |line| line.to_i }.sum
     end
end