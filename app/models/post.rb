class Post < ApplicationRecord
    has_many :likes
    has_many :comments
    belongs_to :user

    validates :title, :location, :caption, presence: true
end
