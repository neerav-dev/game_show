require './player'
require './question'

class GameShow
  def initialize(player_name1, player_name2)
    @player1 = Player.new(player_name1)
    @player2 = Player.new(player_name2)
  end

  def start_game
    q = Question.new()
    q.generate_question
    puts "#{@player1.name}: What does #{q.num1} plus #{q.num2} equal?\n"
    answer = gets.chomp
    if q.answer == answer.to_i
      puts "Correct"
    else
      puts "Incorrect, correct answer is #{q.answer}."
    end
  end
end

game = GameShow.new("Nick", "Rupan")

game.start_game