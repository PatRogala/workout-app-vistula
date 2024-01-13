# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.create!(
  name: "Chicken and Rice",
  description: "A simple chicken and rice recipe.",
  ingredients: "1 cup rice, 1 cup chicken",
  directions: "Cook rice. Cook chicken. Combine.",
  image: "https://www.servingdumplings.com/wp-content/uploads/2023/05/one-pot-creamy-chicken-and-rice-3-082a4292.jpg"
)

Recipe.create!(
  name: "Pasta",
  description: "A simple pasta recipe.",
  ingredients: "1 cup pasta, 1 cup sauce",
  directions: "Cook pasta. Cook sauce. Combine.",
  image: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/658A0A74-039A-487C-A07A-CAAF61B4615D/Derivates/A230DF28-60DF-429D-ABDA-96ED64E9EE10.jpg"
)

Recipe.create!(
  name: "Pizza",
  description: "A simple pizza recipe.",
  ingredients: "1 cup dough, 1 cup sauce, 1 cup cheese",
  directions: "Cook dough. Cook sauce. Combine.",
  image: "https://s3.przepisy.pl/przepisy3ii/img/variants/800x0/domowa-pizza748835.jpg"
)
