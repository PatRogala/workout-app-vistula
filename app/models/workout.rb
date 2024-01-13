class Workout < ApplicationRecord
  def self.daily
    workout_id = Date.today.yday % Workout.count + 1

    Workout.find(workout_id)
  end
end
