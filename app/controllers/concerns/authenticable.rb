module Authenticable

	# Devise methods overwrites
	def current_user
		@current_user ||= User.find_by(auth_token: request.headers['Authorization'])
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def init_current_user
		current_user
	end

	def authenticate_with_token!
		render json: { errors: "Not authenticated"}, status: :unauthorized unless current_user.present?
	end

end
