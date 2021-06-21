class Question

  attr_reader :answer, :num1, :num2

  def generate_question
    @num1 = rand(1..21)
    @num2 = rand(1..21)
    @answer = num1 + num2
  end

end
