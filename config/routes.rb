Spotifriends::Application.routes.draw do
  root :to => 'welcome#index'
  resources :users, :only => [:edit, :new, :create]
  resources :contests
  resources :songs, :except => [:create] do
    collection do
      get 'search/:spy_id', :action => 'get_song_info'
    end
  end

  # get '/search/:spy_id' => 'songs#get_song_info'

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
