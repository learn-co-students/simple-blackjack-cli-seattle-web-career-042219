def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  sum
end

def hit?(num_total)
  prompt_user
  response = get_user_input
    if (response == "s")
      num_total = num_total
    elsif (response == "h")
      num_total += deal_card
    else invalid_command
    end
  num_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
