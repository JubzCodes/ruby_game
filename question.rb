class Quiz

  def initialize
@number = rand(20)
@number2 = rand(20)
@correct = @number + @number2
end

def question
  "What does #{@number} plus #{@number2} equal?"
  end

  def checker (player_answer)
   if ( player_answer == @correct)
   return true
   else 
    return false
   end

  end

end
# run = Question.new
# p run.question
# p run.checker
