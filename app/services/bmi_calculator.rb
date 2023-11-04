class BmiCalculator
  attr_reader :height, :weight, :age

  UNDERWEIGHT = 18.5
  OVERWEIGHT = 24.9

  def initialize(user)
    @user = user
    @height = user.height
    @weight = user.weight
    @age = user.age
  end

  def bmi
    (weight / ((height / 100.0)**2)).to_f.round(2)
  end

  def underweight?
    bmi < UNDERWEIGHT
  end

  def overweight?
    bmi > OVERWEIGHT
  end
end
