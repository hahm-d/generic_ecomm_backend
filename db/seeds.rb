User.destroy_all
Order.destroy_all
Item.destroy_all
Payment.destroy_all


User.create(username: "danny", password: "develop9999", email:"dannyhammy@test.com")
User.create(username: Faker::Name.name, password: "develop9999", email: Faker::Internet.email)

# create sample items
Item.create(category: "sports", price: 1000, name: "tennis ball set", description: "set of 6 tennis balls")
Item.create(category: "home & kitchen", price: 700, name: "Eat Smile Happy Mug", description: "signature smile mug")
Item.create(category: "beauty & personal care", price: 1000, name: "Eat Smile Hand Soap", description: "Soap for your hands!")

# Order sample
Order.create(user_id: User.first.id, total: 1700, tracking: "Y0AZ234FA341", status: "Pending")
Order.create(user_id: User.second.id, total: 1700, tracking: "Y0AZ234FA341", status: "Pending")

# Payment


puts "Seed completed"