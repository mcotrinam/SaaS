class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
      p1 = player1[1]
      p2 = player2[1]
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S") if self.invalid?(p1) or self.invalid?(p2)
      if p1 != p2 
          case p1
            when "P" then p2 == "R"? player1 : player2
            when "R" then p2 == "S"? player1 : player2
            when "S" then p2 == "P"? player1 : player2
          end
      else
        player1
      end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].kind_of?(String)
      return winner(tournament[0], tournament[1])
    else
      return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
    end
  end
  
  def self.invalid?(strategy)
    /[^PRS]/ === strategy
  end

end

#tourney = [
#        [
#          [ ["Armando", "P"], ["Dave", "S"] ],      
#          [ ["Richard", "R"], ["Michael", "S"] ]
#        ],
#        [
#          [ ["Allen", "S"], ["Omer", "P"] ],
#          [ ["David E.", "R"], ["Richard X.", "P"] ]
#        ]
#      ]
      
#p RockPaperScissors.tournament_winner(tourney)

#p RockPaperScissors.winner(['Armando','P'], ['Dave','S'])  # => ['Dave','S']
