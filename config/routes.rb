Spotifriends::Application.routes.draw do
  root :to => 'home#index'
  resources :users
  resources :entries

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
