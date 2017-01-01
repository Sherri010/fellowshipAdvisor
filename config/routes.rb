Rails.application.routes.draw do
  root to: 'cities#index'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'show_post'

  resources :users, except: :index

  resources :cities do
    resources :posts do
      resources :comments, except: :index
    end
  end

end
