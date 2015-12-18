class Team < ActiveRecord::Base
	validates :name, :settings, :user_id, presence: true

	belongs_to :user
end
