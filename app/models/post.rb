class Post < ApplicationRecord
    has_many :likes
    has_many :user_likes, through: :likes, source: :user # returns the user instance, not the like instance
    has_many :comments
    has_many :user_commments, through: :comments, source: :user # returns the user instance, not the comment instance
    belongs_to :user

    validates :title, :location, :caption, presence: true
end
