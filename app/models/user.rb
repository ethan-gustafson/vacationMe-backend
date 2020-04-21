class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :likes

    validates :name, :username, :email, :password, presence: true
    validates :username, :email, uniqueness: true
end
