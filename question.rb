class Question

  attr_reader :answer

  def askQuestion
    num1 = rand(1..21)
    num2 = rand(1..21)
    puts "What does #{num1} plus #{num2} equal?\n"
    @answer = num1 + num2
  end

end
