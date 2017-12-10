Rails.application.routes.draw do

  root 'users#index'

  resources :users

  post '/rest/verify_user', to: 'rests#verify_user'

end
