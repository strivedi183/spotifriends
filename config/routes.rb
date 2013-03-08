Spotifriends::Application.routes.draw do
  root :to => 'welcome#index'
  resources :users, :only => [:edit, :new, :create]
  resources :contests

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
