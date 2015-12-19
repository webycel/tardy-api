class Team < ActiveRecord::Base
	validates :name, :settings, :user_id, presence: true

	belongs_to :user

	has_many :members, dependent: :destroy
end
