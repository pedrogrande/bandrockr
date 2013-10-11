Bandrockr::Application.routes.draw do
  resources :band_profiles

  get "admin" => "admin#index"

  resources :gigs

  resources :photos

  resources :tracks

  resources :albums

  resources :links

  resources :members

  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
