class TeamsController < ApplicationController

	after_filter  :authenticate_user!

	def index
		@teams = Team.from_user(current_user.id)
	end

	def show
		@team = Team.find(params[:id])
	end

	private
		def team_params
			params.require(:teams).permit(:name, :settings)
		end

end
