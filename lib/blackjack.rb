def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer=gets.chomp
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
  total=deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(number)
  prompt_user
  answer=get_user_input
  if answer=="h"
    deal_card + number
  elsif answer=="s"
    number
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total=hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)

end
