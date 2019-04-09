def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0

  for i in 1..2
    deal_card
    card_total += deal_card
  end

  display_card_total(card_total)
  return card_total
end

def hit?(number)
  # code hit? here
  prompt_user
  user_input = get_user_input

  if user_input == 'h'
    deal_card + number

  elsif user_input == 's'
    number
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  limit = initial_round

  until limit > 21
    limit = display_card_total(hit?(limit))
  end
  end_game(limit)
end
