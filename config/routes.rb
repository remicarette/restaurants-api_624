Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  namespace :api, defaults: { format: :json } do                           # /api
    namespace :v1 do                          # /api/v1
      resources :restaurants, only: [:index, :show, :update, :create, :destroy]  # /api/v1/restaurants
    end

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
