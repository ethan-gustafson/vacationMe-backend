class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :user_id, :post_id
end
