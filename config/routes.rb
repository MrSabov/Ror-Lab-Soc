Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  



  scope"(:locale)", locale: /#{I18n.available_locales.join("|") }/ do

    # devise_for :users, controllers: {
    #     sessions: 'users/sessions'
    # }

    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
      root 'posts#index'
      resources :posts
      resources :tags, only: [:show]
      resources :categories, only: [:show]
      resources :forums
      resources :pages
      resources :previews
      resources :users



    namespace :admin do
      resources :categories, except: [:show]
      resources :posts, except: [:show, :index]
      resources :pictures, only: [:create, :destroy]
    end
  end

end


