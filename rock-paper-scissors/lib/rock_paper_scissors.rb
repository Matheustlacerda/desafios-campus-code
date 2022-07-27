class RockPaperScissors
  def play(actions)
    player_A = []
    player_B = []
    score_A = score_B = draw = 0

    actions.split("\n").each { |action|
      player_A << action.split(' vs ').first
      player_B << action.split(' vs ').last
    }

    (player_A.size).times do |match|
      if player_A[match] == player_B[match]
        draw += 1
      elsif player_A[match] == 'tesoura' && player_B[match] == 'papel' ||
        player_A[match] == 'pedra' && player_B[match] == 'tesoura' ||
          player_A[match] == 'papel' && player_B[match] == 'pedra'
          score_A += 1
      else
        score_B += 1
      end
    end

    if draw == 0 && score_B == 0
      "Jogador A: #{score_A}"
    elsif draw == 0 && score_A == 0
      "Jogador B: #{score_B}"
    elsif score_A != 0 && score_B != 0 && draw == 0
      "Jogador A: #{score_A} | Jogador B: #{score_B}"
    else
      "Empates: #{draw} | Jogador A: #{score_A} | Jogador B: #{score_B}"
    end
  end
end
