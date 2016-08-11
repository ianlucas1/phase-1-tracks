class Player

  attr_reader :name , :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def advance(n)
    @position += n
  end

  def print_progress
    prog = ""
    for i in 0..@position
      prog += "-"
    end
    puts "#{name} PROGRESS"
    puts prog
  end

end
