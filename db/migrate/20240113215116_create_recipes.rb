class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :ingredients
      t.string :directions
      t.string :image
      t.timestamps
    end
  end
end
