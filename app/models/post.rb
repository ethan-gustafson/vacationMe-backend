class Post < ApplicationRecord
    has_many :likes
    belongs_to :user

    validates :title, :location, :caption, presence: true
end
