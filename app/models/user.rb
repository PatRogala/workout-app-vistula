class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  VALID_GENDERS = ["F", "M"].freeze

  validates :email, presence: true
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :gender, inclusion: { in: VALID_GENDERS }, allow_nil: true

  delegate :bmi, :underweight?, :overweight?, to: :bmi_calculator
  delegate :bmr, to: :bmr_calculator

  def bmi_calculator
    BmiCalculator.new(self)
  end

  def bmr_calculator
    BmrCalculator.new(self)
  end

  def male?
    gender == "M"
  end

  def female?
    gender == "F"
  end
end
