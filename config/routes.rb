Holiday::Application.routes.draw do  

  get "video/index"

  resources :events

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  match 'map.calendar_day "/calendar/:year/:month/:day", :controller => "calendar", :action => "day" '

  
  resources :enquiries


  resources :deals


  get "about/index"
  match "about" => "about#index"



  resources :deals
  resources :travel_agent_profiles

  get "search/index"
  match "search" => "search#index"

  get "blog/index",:id => "blog"
  match "blog" => "blog#index"

  resources :posts do
    resources :comments
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :users


end