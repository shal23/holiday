Holiday::Application.routes.draw do  match "explore" => "explore#index"

  get "about/index"
  match "about" => "about#index"

  resources :deals

  get "search/index"
  match "search" => "search#index"

  get "blog/index",:id => "blog"
  match "blog" => "blog#index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  resources :posts do
    resources :comments
  end
end