class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :title, :caption, :user_id, :created_at, :updated_at
end
