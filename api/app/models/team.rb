class Team < ActiveRecord::Base
	validates :name, :settings, :user_id, presence: true
end
