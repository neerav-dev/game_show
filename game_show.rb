require './player'
require './question'

class GameShow
  def initialize(player_name1, player_name2)
    @player1 = Player.new(player_name1)
    @player2 = Player.new(player_name2)
    @current_payer = @player1
  end

  def show_score
    "#{@player1.name}:#{@player1.life}/3 vs #{@player2.name}:#{@player2.life}/3"
  end

  def start_game
    loop do
      question = Question.new()
      question.generate_question
      puts "#{@current_payer.name}: What does #{question.num1} plus #{question.num2} equal?\n"
      answer = gets.chomp
      if question.answer == answer.to_i
        puts "#{@current_payer.name}: YES! You are correct."
        @current_payer.addScore
      else
        puts "#{@current_payer.name}: Seriously? No!"
        @current_payer.loseLife
      end

      if @current_payer.name == @player1.name
        @player1 = @current_payer
        @current_payer = @player2
      else
        @player2 = @current_payer
        @current_payer = @player1
      end

      puts show_score
      puts "----- NEW TURN -----"

      if @player1.life == 0 || @player2.life == 0
        if @player1.life > 0
          puts "#{@player1.name} wins with score of #{@player1.score}/#{@player2.score}"
        else
          puts "#{@player2.name} wins with score of #{@player1.score}/#{@player2.score}"
        end
        break
      end
    end 
  end
end

game = GameShow.new("Nick", "Rupan")

game.start_game