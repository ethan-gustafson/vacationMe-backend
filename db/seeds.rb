# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: "Ethan Gustafson",
    username: "GoodGuyGuf",
    password: "123",
    email: "ethan_gustafson@outlook.com"
)

20.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        password: Faker::Internet.password,
        email: Faker::Internet.safe_email
    )
end

User.all.each do |user|
    Post.create(
        location: Faker::Address.state,
        title: Faker::Quote.robin,
        caption: Faker::Quote.famous_last_words,
        user_id: user.id
    )
end