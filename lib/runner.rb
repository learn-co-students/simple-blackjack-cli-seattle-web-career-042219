require_relative "blackjack.rb"

runner

def runner
  welcome
  initial_round
  until card_total > 21
    hit?
  end
  end_game
end