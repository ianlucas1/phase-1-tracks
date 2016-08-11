# Get input from the user:  the cheer
def call_out_cheer
  puts "Make a cheer! To end the game cheer 'GAME OVER' "
  input = gets.chomp
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
  case input
  when 'RED HOT'
    'H-O-T!'
  when 'DO IT AGAIN'
    'Go, Fight, Win'
  when '2 BITS'
    'Holler!'
  when 'STOMP YOUR FEET'
    'STOMP!'
  # when 'GAME OVER'
  else
    'Go Team!'
  end
end

# Print the argument passed to the method
def display(response)
  p response
end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
  cheer_ary = []
  loop do
    cheer = call_out_cheer
    cheer_ary << cheer
    break if cheer == "GAME OVER"
    break if cheer_ary[-1] == "" && cheer_ary[-2] == ""
    display(mascot_sign_for(cheer))
  end
end
