class Team < ActiveRecord::Base
	validates :name, :settings, presence: true

	belongs_to :user
end
