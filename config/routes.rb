Rails.application.routes.draw do
  #root 'homes#top', as: :toppage
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  get "users/:id" => "users#show", as: :mypage
  post "books/:id" => "users#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update, :create]
  
  resources :books, only: [:new, :create, :show]
end
