def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..10)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    card_total+=deal_card
  elsif answer == 's'
    card_total
  else
    invalid_command
    prompt_user
  end
end


def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num >22
    hit?(num)
  end_game
end
