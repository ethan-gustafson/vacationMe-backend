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

User.create(
    name: "Alli Karavas",
    username: "Alli.k",
    password: "456",
    email: "alli_k@outlook.com"
)

User.create(
    name: "Ocean",
    username: "MeowMeow",
    password: "789",
    email: "ima_cat@outlook.com"
)