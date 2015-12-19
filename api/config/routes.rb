Api::Application.routes.draw do
  devise_for :users

  # Api definition
  namespace :api, defaults: { format: :json} do
    scope module: :v1 do
      resources :users, :only => [:show, :create, :update, :destroy] do
        resources :teams, :only => [:index, :create, :update, :destroy]
        resources :members, :only => [:index, :show]
      end
      resources :sessions, :only => [:create, :destroy]
      resources :teams, :only => [:show, :index] do
        resources :members, :only => [:index, :show]
      end
    end
  end

end
