class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :settings
  has_one :user
end
