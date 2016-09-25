class RockPaperScissors
  module Play
    ROCK     = 1
    PAPER    = 2
    SCISSORS = 3
  end

  def self.winner(me, op)
    results = [
      "Draw",
      "Me",
      "Opponent"
    ]

    results[(me - op) % 3]
  end
end

