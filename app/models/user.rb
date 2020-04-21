class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :likes
    has_many :liked_posts, through: :posts, source: :likes # User has many posts they have liked: "liked_posts" - so we want to be able to call User.all.first.liked_posts

    validates :name, :username, :email, :password, presence: true
    validates :username, :email, uniqueness: true
end
