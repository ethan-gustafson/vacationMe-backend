class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :likes
    has_many :liked_posts, through: :likes, source: :post # returns the post instance, not the like instance
    has_many :comments
    has_many :commented_posts, through: :comments, source: :post # returns the post instance, not the comment instance

    validates :name, :username, :email, :password, presence: true
    validates :username, :email, uniqueness: true
end
