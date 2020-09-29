class Post < ApplicationRecord
    belongs_to :user
    has_many_attached :images

    has_many :likes
    has_many :user_likes, through: :likes, source: :user # returns the user instance, not the like instance

    has_many :comments
    has_many :user_commments, through: :comments, source: :user # returns the user instance, not the comment instance

    validates :title, :location, :caption, presence: true

    def likes_count
        return self.likes.count
    end
end
