Rails.application.routes.draw do
  resources :negotiations, only: [:index]
  post '/upload', to: 'home#upload'
  get 'home/index'
  root "home#index"
end
