class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :settings, :user_id

  has_many :members

  ActiveModel::Serializer.setup do |config|
    config.embed = :ids
    config.embed_in_root = false
  end
end
