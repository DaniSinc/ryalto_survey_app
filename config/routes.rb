Rails.application.routes.draw do
  mount Rapidfire::Engine => "/rapidfire"
  get '/show', to: 'surveys#show'
  
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
