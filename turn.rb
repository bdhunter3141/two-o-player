class Turn

  def initialize(current_player, number)
    @number = number
    @current_player = current_player
  end

  def turn_check
    if @current_player.lives <= 0
      puts "#{@current_player.name} has lost the game."
      game_over
    else
      puts "----- NEW TURN -----"
      print "#{@current_player.name} :"
      question = Question.new
      correct_check(question)
    end
  end

  def correct_check(question)
    if question.math_question == true
      puts "YES! You are correct."
      end_of_turn
    else
      wrong_answer
    end
  end

  def wrong_answer
    @current_player.lose_life
    puts "Seriously? No!"
    end_of_turn
  end

  def end_of_turn
    "end"
  end

end