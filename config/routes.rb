Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/destroy'
  get 'coffee_chats/index'
  get 'coffee_chats/update'
  get 'coffee_chats/destroy'
  get 'coffee_chats/show'
  get 'users/index'
  get 'users/show'
  get 'users/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
