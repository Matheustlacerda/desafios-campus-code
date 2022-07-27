class Connect4
  def play(actions)

  def new_board
    @@board = []
    @@rows = 8
    @@columns = 8

  def build_board
	  @@rows.times do |row|
		  @@board[row] = []

		  @@columns.times do
			  @@board[row] << '-'
		  end
  	end
    p build_board
  end


  end
end
