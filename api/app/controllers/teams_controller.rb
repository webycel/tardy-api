class TeamsController < ApplicationController

	def teams_params
		params.require(:team).permit(:name)
	end

	def query_params

	end

end
