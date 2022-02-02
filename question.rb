class Question

  def initialize
@number = rand(20)
@number2 = rand(20)
@correct = @number + @number2
end

def question
  "What does #{@number} plus #{@number2} equal?"
  end

  def checker 
   @answer = gets.chomp.to_i
   if (@answer == @correct)
   puts "correct!"
   else 
    puts "wrong!"
   end

  end

end
run = Question.new
p run.question
p run.checker
