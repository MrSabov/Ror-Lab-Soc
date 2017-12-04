Rails.application.routes.draw do
    root 'posts#index'
    resources :posts
    resources :pictures
    resources :tags, only: [:show]
    resources :categories

end


