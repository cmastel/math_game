class Player
  attr_accessor :id, :lives_remaining, :total_lives

  def initialize(id)
    @id = id
    @total_lives = 3
    @lives_remaining = 3
  end

  def decrease_lives()
    self.lives_remaining -= 1
  end

end


  