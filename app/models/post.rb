class Post < ApplicationRecord
    belongs_to :user
    validates :title, :location, :caption, presence: true
end
