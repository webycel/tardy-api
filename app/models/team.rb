class Team < ActiveRecord::Base
	validates :name, :settings, :user_id, presence: true

	belongs_to :user

	has_many :members, dependent: :destroy

	def self.from_user user_id
		Team.where(user_id: user_id)
	end
end
