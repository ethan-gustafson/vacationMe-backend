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

10.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        password: Faker::Internet.password,
        email: Faker::Internet.safe_email
    )
end

User.all.each do |user|
    integer = Random.new

    Post.create(
        location: Faker::Address.state,
        title: Faker::Quote.robin,
        caption: Faker::Quote.famous_last_words,
        user_id: user.id
    )

    Like.create(
        count: integer.rand(User.all.length),
        user_id: integer.rand(User.all.length),
        post_id: integer.rand(Post.all.length)
    )

    Comment.create(
        description: "Seed Description number: #{user.id}. My name is: #{user.name} and my username is #{user.username}. Wish to contact me? Here is my email: #{user.email}",
        user_id: user.id,
        post_id: integer.rand(Post.all.length)
    )

end