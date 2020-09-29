class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :title, :caption, :user_id, :created_at, :updated_at, :likes_count

  attribute :images do |object| 
    arr = []
    if object.images.attached?
      object.images.each do |img|
        arr << Rails.application.routes.url_helpers.rails_blob_url(img, only_path: true)
      end
    else
      arr
    end
    arr
  end
end
