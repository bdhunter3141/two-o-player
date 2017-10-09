
class Game
  attr_accessor :player1, :player2

  def initialize
    @turn_counter = 0
  end

  def play
    puts "Welcome to TwO-O-Player Math!"
    puts "Let's begin!"
    print "First Player: Please enter a name! > "
    @player1 = Player.new($stdin.gets.chomp)
    puts "Hey there #{@player1.name}!"
    print "Player Two: Please enter a name! > "
    @player2 = Player.new($stdin.gets.chomp)
    puts "Excellent. Thanks #{@player2.name}"
    puts "Time for our first question!"
    create_turn
  end

  def create_turn
    @turn_counter += 1
    if @turn_counter.odd?
      new_turn = Turn.new(@player1, @turn_counter)
    else
      new_turn = Turn.new(@player2, @turn_counter)
    end
    new_turn.turn_check
  end

  def game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
