class LikeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :count, :user_id, :post_id, :created_at, :updated_at
end
