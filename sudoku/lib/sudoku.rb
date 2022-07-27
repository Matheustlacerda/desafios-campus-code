class Sudoku
  def check(list)
    list.uniq.count == 9 && list.count == 9     
  end
end
