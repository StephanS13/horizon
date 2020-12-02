Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cities, only: [:index, :show] do

    collection do
      get :search
    end

    resources :favorite_cities, only: [:create]
    resources :pois, only: [:index, :new, :create]
    resources :favorite_pois, only: [:index]
  end

  resources :pois, only: [:show] do
    resources :reviews, only: [:create]
    resources :favorite_pois, only: [:create]
  end

  resource :profile, only: [:show, :update]


  resources :reviews, only: [:update, :destroy]

end
