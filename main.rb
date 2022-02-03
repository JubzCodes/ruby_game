require_relative 'player'
require_relative 'question'

class Game
  
  @end = false 
  @turn = 0
  player_1 = Player.new
  player_2 = Player.new
  #adds players
  puts "------------- NEW GAME -------------"

  while @end == false
  #adds new quiz
  quiz = Quiz.new 

  #gives players a turn value
    if @turn == 0 
      puts " Player 1 : #{quiz.question}"
    else 
      puts " Player 2 : #{quiz.question}"
    end


  #changes players turn value
    if (@turn == 0 && quiz.checker(gets.chomp.to_i))
      puts "Player 1: Correct!"
      @turn = 1 
    elsif (@turn == 0 && !quiz.checker(gets.chomp.to_i))
      puts "Player 1: Wrong!"
      player_1.wrong
      @turn = 1
    elsif (@turn == 1 && quiz.checker(gets.chomp.to_i))
      puts "Player 2: Correct!"
      @turn = 0
    elsif (@turn == 1 && !quiz.checker(gets.chomp.to_i))
      puts "Player 2: Wrong!"
      player_2.wrong
      @turn = 0
    end

#ends game and shows results
  if (player_1.end || player_2.end)
    puts "------------- GAME OVER -------------"
    @end = true 
    if player_1.lives < 1 
      puts "Player 2 wins with score of #{player_2.lives}/3"
    elsif player_2.lives < 1 
      puts "Player 1 wins with score of #{player_1.lives}/3"
    end
  end


  end # while end
end #game class end

