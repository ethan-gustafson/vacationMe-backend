class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    def display_user
        self.user.username
    end
end
