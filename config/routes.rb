Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/unacceptable'
  get 'errors/internal_error'
  root 'pages#home'

  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy, :edit, :update]
  resources :posts, only: [:create, :edit, :update, :destroy, :show, :index]
  resources :follows, only: [:create, :destroy]

  get '/profile/:id', to: 'users#show', as: 'user'
  get '/profile/:id/followings', to: 'users#followings', as: 'followings'
  get '/profile/:id/followers', to: 'users#followers', as: 'followers'
  post '/users/search', to: 'users#search', as: 'search'
  get '/users/search', to: 'users#search'

  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # error routes
  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unacceptable'
  get '/500', to: 'errors#internal_error'
end
