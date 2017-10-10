class Turn

  def initialize(current_player, number)
    @number = number
    @current_player = current_player
  end

  def turn_check
    if @current_player.lives <= 0
      puts "#{@current_player.name} has lost the game."
      false
    else
      true
    end
  end

  def new_turn
    puts "----- NEW TURN ( Number: #{@number}) -----"
    print "#{@current_player.name} :"
    question = Question.new
    correct_check(question)
  end

  def correct_check(question)
    if question.math_question == true
      puts "YES! You are correct."
    else
      wrong_answer
    end
  end

  def wrong_answer
    @current_player.lose_life
    puts "Seriously? No!"
  end

  def end_of_turn(p1, p2)
    puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
  end

end