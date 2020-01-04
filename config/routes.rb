Rails.application.routes.draw do
  root 'posts#index'

  resources :users, only: %i[index new create show]
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :posts, shallow: true do
    resources :comments
    resources :likes, only: %i[create destroy]
    collection do
      get :like_posts
    end
  end
  resources :relationships, only: %i[create destroy]
end
