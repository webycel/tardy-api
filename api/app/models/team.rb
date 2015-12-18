class Team < ActiveRecord::Base
	validates :name, :settings, presence: true

	belongs_to :user

	has_many :memberships
	has_many :members, through: :memberships
end
