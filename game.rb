require "./question"
require "./player"


class Game
  attr_accessor :turn

  def initialize
    @turn = 1
  end

  def next_turn()
    puts ""
    puts "------------- Next Turn --------------"
    values = new_question()
    puts "Player #{self.turn}: What does #{values[0]} plus #{values[1]} equal?"
    response = gets.chomp.to_i
    is_correct = (response == values[2] ? true : false)
    if is_correct
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
    end
    (self.turn == 1) ? (self.turn = 2) : (self.turn = 1)
    is_correct
  end




end
