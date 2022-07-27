class JogoDaVelha
  def play(actions)
    board = new_board
    score = {}

    actions.split("\n").each do |action|
      letter, x, y = action.scan(/(\w)\-\>(\d)\,(\d)/).first
      board[x.to_i][y.to_i] = letter
      winner = winner_letter(board)
      if !winner.nil? && winner != "-"
        total = score[winner].to_i + 1
        score[winner] = total
        board = new_board
      elsif board_is_over?(board)
        board = new_board
      end
    end

    announce_winner(score)
  end

  private

  def new_board
    [
      ["-","-","-"],
      ["-","-","-"],
      ["-","-","-"]
    ]
  end

  def winner_letter(board)
    [
      [board[0][0], board[0][1], board[0][2]],
      [board[1][0], board[1][1], board[1][2]],
      [board[2][0], board[2][1], board[2][2]],
      [board[0][0], board[1][0], board[2][0]],
      [board[0][1], board[1][1], board[2][1]],
      [board[0][2], board[1][2], board[2][2]],
      [board[0][0], board[1][1], board[2][2]],
      [board[0][2], board[1][1], board[2][0]]
    ].find {|line| line.uniq.size.eql?(1) }&.uniq&.first
  end

  def board_is_over?(board)
    board.none? {|row| row.include?('-') }
  end

  def announce_winner(score)
    if score.size <= 0 || score.size > 1 && score.values.uniq.size.eql?(1)
      'Empate'
    else
      winner, total = score.sort_by {|k, v| -v}.first
      "#{winner} venceu com #{total} vitórias"
    end
  end
end
