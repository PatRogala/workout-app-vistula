class BmrCalculator
  def initialize(user)
    @user = user
  end

  def bmr
    return nil if @user.height.nil? || @user.weight.nil? || @user.age.nil? || @user.gender.nil?

    if @user.male?
      return 10 * @user.weight + 6.25 * @user.height - 5 * @user.age + 5
    else
      return 10 * @user.weight + 6.25 * @user.height - 5 * @user.age - 161
    end
  end
end
