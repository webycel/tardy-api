class Api::V1::MembersController < ApplicationController

	respond_to :json

	# before_action :authenticate_with_token!, only: [:create]

	def index
		members = Member.where(team_id: params[:team_id]).all
		respond_with members
	end

	def show
		puts current_user.teams.find(params[:team_id])
		respond_with Member.find(params[:id])
	end

	def create
		member = current_user.teams.find(params[:team_id]).members.build(member_params)
	end

	private
		def member_params
			params.require(:member).permit(:name)
		end

end
