
class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def math_question
    puts "What does #{@num1} plus #{@num2} equal?"
    answer = $stdin.gets.chomp
    correct?(answer)
  end

  def correct?(answer)
    @num1 + @num2 == answer.to_i
  end

end