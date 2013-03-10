Spotifriends::Application.routes.draw do
  root :to => 'welcome#index'
  resources :users, :only => [:edit, :new, :create]
  resources :contests do
    resources :songs do
    end
  end

  get '/search/:spy_id' => 'songs#get_song_info'

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
