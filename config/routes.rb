Rails.application.routes.draw do
  root to: 'cities#index'

  # get '/cities', to: 'cities#index', as: 'cities'
  # get '/cities/new', to: 'cities#new' , as: 'new_city'
  # get '/cities/:id', to: 'cities#show', as: 'city'
  # post '/cities', to:'cities#create', as:'add_city'
  # patch '/citie/:id', to: 'cities#update', as:'update_city'
  # delete '/cities/:id', to: 'cities#destroy', as:'delete_city'
  #
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'
  #
  # # get '/users/:user_id/posts',     to: 'post_users#index', as: 'user_posts'
  # # post '/posts/:post_id/users', to: 'post_users#create', as: 'post_users'
  #
  # patch '/users/:id', to: 'users#update', as: 'update_user'
  #
   get '/users/:user_id/posts/:id', to: 'posts#show', as: 'show_post'
  #
  # delete '/cities/:city_id/posts/:id', to: 'posts#destroy', as: 'delete_post'
  #
  # patch '/cities/:city_id/posts/:id', to: 'posts#update', as: 'update_post'
  #
  # patch '/cities/:city_id/posts/:post_id/comments/:id', to: 'comments#update', as: 'update_comment'
  # delete '/cities/:city_id/posts/:post_id/comments/:id', to: 'comments#destroy', as: 'delete_comment'

  resources :users, except: :index

  resources :cities do
    resources :posts do
      resources :comments, except: :index
    end
  end

end
