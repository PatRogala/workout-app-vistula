require "rails_helper"

RSpec.describe User do
  describe "validations" do
    context "gender" do
      it "allows 'F'" do
        user = build(:user, gender: "F")

        expect(user.valid?).to be true
      end

      it "allows 'M'" do
        user = build(:user, gender: "M")

        expect(user.valid?).to be true
      end

      it "does not allow 'X'" do
        user = build(:user, gender: "X")

        expect(user.valid?).to be false
      end

      it "does allow nil" do
        user = build(:user, gender: nil)

        expect(user.valid?).to be true
      end
    end
  end

  describe "#bmi" do
    context "when user has height and weight" do
      it "returns the BMI" do
        user = create(:user, height: 175, weight: 70)
        expect(user.bmi).to eq(22.86)
      end
    end

    context "when user has no height" do
      it "returns nil" do
        user = create(:user, height: nil, weight: 70)
        expect(user.bmi).to be_nil
      end
    end

    context "when user has no weight" do
      it "returns nil" do
        user = create(:user, height: 175, weight: nil)
        expect(user.bmi).to be_nil
      end
    end
  end
end
