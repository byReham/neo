User.create!(name:  "Boss",
             email: "mihailrehmunov@gmail.com",
             password:              "12345678",
             password_confirmation: "12345678",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

Product.create!(name:  "Example Product",
             price: "5.99",
             image:              "397_big.jpg",
             details: "Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!!")

99.times do |n|
  name  = Faker::Name.name
  price = "#{1.00+n/4}"
  image = "397_big.jpg"
  details = "Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!! Some words about this item!!!"
  Product.create!(name:    name,
               price:   price,
               image:   image,
               details: details)
end
