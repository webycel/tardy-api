TardyApi::Application.routes.draw do
  devise_for :users

  # Api definition
  namespace :api, defaults: { format: :json}, constraints: { subdomain: 'api' }, path: '/' do

  end

end
