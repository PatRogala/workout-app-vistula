class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :description
      t.string :exercises
      t.string :directions
      t.string :image
      t.timestamps
    end
  end
end
