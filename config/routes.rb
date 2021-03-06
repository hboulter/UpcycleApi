Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :index] # registration
  resources :posts 
  patch '/update/:id', to: 'posts#post_update'
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  post "/rails/active_storage/direct_uploads", to: "direct_uploads#create"
  delete '/posts', to: 'posts#cleanup'
end