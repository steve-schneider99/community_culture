# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
category = ["buy", "sell", "trade"]


20.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    neighborhood: Faker::Address.city
  )

  3.times do
    classified = user.classifieds.create(
    category: category.sample,
    subcategory: Faker::Commerce.department,
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    price: Faker::Commerce.price,
    neighborhood: user.neighborhood
    )
  end

end
