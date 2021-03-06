class Member < ActiveRecord::Base
  validates :name, :team_id, :total_counter, :counter, presence: true

  belongs_to :team

	def self.from_team team
		Member.where(team_id: team)
	end
end
