class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :created_at, :updated_at
end
