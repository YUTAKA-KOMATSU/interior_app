Rails.application.routes.draw do
  get 'maps/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#index"
  resources :users, only: [:index, :show]
  resources :myinteriors do
    resources :comments, only: [:create]
  end
  resources :show_all, only: [:index]
  resources :maps, only: [:index]
end
