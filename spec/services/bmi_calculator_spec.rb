require "rails_helper"

RSpec.describe BmiCalculator do
  let(:user) { create(:user, height: 175, weight: 70) }
  let(:bmi_calculator) { BmiCalculator.new(user) }

  describe "#bmi" do
    context "when user has height and weight" do
      it "returns the BMI" do
        expect(bmi_calculator.bmi).to eq(22.86)
      end
    end
  end

  describe "#underweight?" do
    context "when user is underweight" do
      before { user.update(weight: 40) }

      it "returns true" do
        expect(bmi_calculator.underweight?).to be true
      end
    end

    context "when user is not underweight" do
      before { user.update(weight: 65) }

      it "returns false" do
        expect(bmi_calculator.underweight?).to be false
      end
    end
  end

  describe "#overweight?" do
    context "when user is overweight" do
      before { user.update(weight: 90) }

      it "returns true" do
        expect(bmi_calculator.overweight?).to be true
      end
    end

    context "when user is not overweight" do
      before { user.update(weight: 60) }

      it "returns false" do
        expect(bmi_calculator.overweight?).to be false
      end
    end
  end
end
