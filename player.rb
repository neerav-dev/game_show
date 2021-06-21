class Player
  attr_reader :name, :life, :score
  attr_writer :name, :life, :score

  def initialize(name, life, score)
    @name = name
    @life = life
    @score = score
  end

  def addScore()
    @score + 1
  end

  def loseLife()
    @life - 1
  end
end