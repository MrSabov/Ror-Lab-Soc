Rails.application.routes.draw do
  devise_for :users
    root 'posts#index'
    resources :posts
    resources :pictures
    resources :tags, only: [:show]
    resources :categories, only: [:show]

  namespace :admin do
    resources :categories, except: [:show]
  end

end


