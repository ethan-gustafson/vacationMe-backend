class LikeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :count, :user_id, :post_id
end
