class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :team_id, :total_counter, :counter
end
