class Api::V1::MembersController < ApplicationController

	respond_to :json

	# before_action :authenticate_with_token!, only: [:create]

	def index
		members = Member.where(team_id: params[:team_id]).all
		respond_with members
	end

	def show
		team = current_user.teams.find(params[:team_id])
		member = Member.from_team(team).find(params[:id])

		respond_with member
	end

	def create
		member = current_user.teams.find(params[:team_id]).members.build(member_params)
	end

	def destroy
		member = Member.find(params[:member_id, :team_id])
		member.destroy
		head 204
	end

	def increment
		# team = current_user.teams.find(params[:team_id])
		# member = Member.from_team(team).find(params[:member_id])
		member = Member.find(params[:member_id])
		member.total_counter += 1
		member.counter += 1
		member.save
		respond_with member
	end

	def reset
		member = Member.find(params[:member_id])
		member.update(counter: 0)
		respond_with member
	end

	private
		def member_params
			params.require(:member).permit(:name)
		end

end
