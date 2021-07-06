def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card)
  # code #end_game here
  puts "Sorry, you hit #{card}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal = deal_card + deal_card
  display_card_total(deal)
  deal
end

def hit?(total)
  prompt_user
  response = get_user_input
  if response == "h"
    total += deal_card
  elsif response == "s"
    total = total
  else
    invalid_command
  end
  total
  # code hit? here
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
  sum = 0
  welcome
  sum = initial_round
  until sum > 21
    newTotal = hit?(sum)
    display_card_total(newTotal)
    sum = newTotal
  end
end_game(sum)
end
