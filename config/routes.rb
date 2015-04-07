Rails.application.routes.draw do
  root 'users/profile#show'

  get '/login'  => 'users/sessions#new',     as: :login
  get '/logout' => 'users/sessions#destroy', as: :logout
  get '/auth/:provider/callback' => 'users/sessions#create'
end
