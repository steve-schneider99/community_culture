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

10.times do
  volunteers = Point.create(
    earning_method: "volunteer",
    title: Faker::Name.title,
    description: Faker::Lorem.sentence(3),
    point_value: Faker::Commerce.price,
    rate?: true,
    business_name: Faker::Company.name,
    business_address: Faker::Address.street_address + ", " + Faker::Address.city + " " + Faker::Address.state,
    business_phone: Faker::PhoneNumber.phone_number,
    business_email: Faker::Internet.safe_email
  )

  donates = Point.create(
    earning_method: "donate",
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    point_value: Faker::Commerce.price,
    rate?: false,
    business_name: Faker::Company.name + " " + Faker::Company.suffix,
    business_address: Faker::Address.street_address + ", " + Faker::Address.city + " " + Faker::Address.state,
    business_phone: Faker::PhoneNumber.phone_number,
    business_email: Faker::Internet.safe_email
  )

  outreaches = Point.create(
    earning_method: "outreach",
    title: "outreach volunteer",
    description: Faker::Lorem.sentence(3),
    point_value: Faker::Commerce.price,
    rate?: true,
    business_name: Faker::Company.name,
    business_address: Faker::Address.street_address + ", " + Faker::Address.city + " " + Faker::Address.state,
    business_phone: Faker::PhoneNumber.phone_number,
    business_email: Faker::Internet.safe_email
  )

end
