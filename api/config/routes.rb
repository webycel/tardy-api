Api::Application.routes.draw do
  get 'rails/s'

  devise_for :users

  root "teams#index"

  resources :teams, as: :teams

  # Api definition
  namespace :api, defaults: { format: :json} do
    scope module: :v1 do
      resources :users, :only => [:show, :create, :update, :destroy] do
        resources :teams, :only => [:index, :create, :show, :update, :destroy] do
          resources :members, :only => [:index, :show, :create]
        end
      end
      resources :sessions, :only => [:create, :destroy]
    end
  end

end
