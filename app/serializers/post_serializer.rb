class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :title, :caption, :user_id
end
