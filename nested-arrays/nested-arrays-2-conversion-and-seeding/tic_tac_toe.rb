# Release 1: Generate a Populated Tic-tac-toe Board

def generate_tic_tac_toe
  [ Array.new(3) { ["X","O"].sample }, 
    Array.new(3) { ["X","O"].sample }, 
    Array.new(3) { ["X","O"].sample }
  ]
end