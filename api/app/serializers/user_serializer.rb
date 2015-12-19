class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :updated_at, :auth_token

  has_many :teams

  ActiveModel::Serializer.setup do |config|
    config.embed = :ids
    config.embed_in_root = false
  end
end
