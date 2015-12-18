Api::Application.routes.draw do
  devise_for :users

  # Api definition
  namespace :api, defaults: { format: :json} do
    scope module: :v1 do
      resources :users, :only => [:show, :create, :update, :destroy]
      resources :sessions, :only => [:create, :destroy]
      resources :teams, :only => [:show, :index]
    end
  end

end
