class Player 

  def initialize
    @lives = 3
  end 

  def wrong 
  @lives -= 1
  end

  def end 
  @lives < 1
  end
end 