class Recipe < ApplicationRecord
  def self.daily
    recipe_id = Date.today.yday % Recipe.count + 1

    Recipe.find(recipe_id)
  end
end
