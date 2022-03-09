# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10. times do 
  product = Product.new(
           name: Faker::Beer.brand,
           price: rand(4..12),
           img_url: "https://unsplash.com/photos/3ORoQEJY9LA",
           description: Faker::Beer.style
  )
  product.save 
end 