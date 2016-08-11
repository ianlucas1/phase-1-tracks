require_relative 'die'
require_relative 'player'

class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    temp = []
    players.each{ |x| temp << Player.new(x) }
    @players = temp
    @die = die
    @length = length
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?

    @players.each do |current_player|
      return true if current_player.position >= @length
    end

    return false

  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    @players.each do |current_player|
      if current_player.position >= length
        #puts "#{current_player.name} JUST WON!!!"
        return "#{current_player.name}"
      end
    end
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    player.advance(die.roll)
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    @players.each do|x|
      print_lane
      x.print_progress
    end
    return nil
  end

  def print_lane
    lane = ""
    for i in 0..@length-1
       lane += "-"
    end
    puts lane
  end

end
