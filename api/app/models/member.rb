class Member < ActiveRecord::Base
  belongs_to :team

  validates :name, :team_id, presence: true

  has_many :memberships
  has_many :teams, through: :memberships
end
