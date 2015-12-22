Api::Application.routes.draw do
  get 'rails/s'

  devise_for :users

  # Api definition
  namespace :api, defaults: { format: :json} do
    scope module: :v1 do
      resources :users, :only => [:show, :create, :update, :destroy] do
        resources :teams, :only => [:index, :create, :show, :update, :destroy] do
          resources :members, :only => [:index, :show, :create]
        end
      end
      resources :sessions, :only => [:create, :destroy]
      # resources :teams, :only => [:show, :index] do
      #   resources :members, :only => [:index, :show, :create]
      # end
    end
  end

end
