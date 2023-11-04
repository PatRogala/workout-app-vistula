class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :reset_password_token, uniqueness: true, allow_nil: true

  def bmi
    return 0 if height.nil? || weight.nil?

    BmiCalculator.new(self).bmi
  end

  def underweight?
    BmiCalculator.new(self).underweight?
  end

  def overweight?
    BmiCalculator.new(self).overweight?
  end
end
