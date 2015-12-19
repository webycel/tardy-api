class Api::V1::MembersController < ApplicationController

	respond_to :json

	# before_action :authenticate_with_token!, only: [:index, :show]

	def index
		members = Member.find(params[:team_id])
		respond_with members
	end

	def show
		respond_with current_user.teams.members.find(params[:id])
	end

end
