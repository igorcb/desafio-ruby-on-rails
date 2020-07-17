Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :negotiations, only: [:index] do
    collection do
      get :search
    end
  end
  post '/upload', to: 'home#upload'
  get 'home/index'
  
  root 'home#index'
end
