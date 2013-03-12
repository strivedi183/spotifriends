Spotifriends::Application.routes.draw do
  root :to => 'welcome#index'
  resources :users, :only => [:edit, :new, :create]
  resources :contests do
    get 'results'
      resources :songs do
      end
  end

  resources :requests, :only => [:edit, :new, :create]
  get '/requests/thanks' => 'requests#thanks'

  post '/contests/:contest_id/songs/:id/vote' => 'votes#vote'

  get '/search/:spy_id' => 'songs#get_song_info'

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
