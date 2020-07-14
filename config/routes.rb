Rails.application.routes.draw do
  post '/upload', to: 'home#upload'
  get 'home/index'
  root "home#index"
end
