class Member < ActiveRecord::Base
  validates :name, :team_id, presence: true

  belongs_to :team
end
