Rails.application.routes.draw do
  root 'application#hello'

  get '/sessions/new', to: 'sessions#new', as: "login"
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
