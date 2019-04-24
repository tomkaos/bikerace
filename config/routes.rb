Rails.application.routes.draw do

  get '/home', to: 'page#home'
  get '/photos', to: 'page#photos'
  get '/map', to: 'page#map'
  get '/riders', to: 'riders#index'
  resources :submissions, only: [:new, :create]
  root to: 'page#home'
  get '*unmatched_route', to: 'application#raise_not_found'
end
