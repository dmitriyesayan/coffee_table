Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'experts', to: 'users#index'
  get 'experts/:id', to: "users#show"

  get 'experts/:id/coffee_chats', to: 'coffee_chats#index'
  patch 'experts/:id/coffee_chats', to: 'coffee_chats#update'
  delete 'experts/:id/coffee_chats', to: 'coffee_chats#destroy'

  post 'experts/:id/coffee_chats/:id/bookings', to: 'bookings#create'
  get 'experts/:id/coffee_chats/:id/bookings/:id', to: 'bookings#show'
  patch 'experts/:id/coffee_chats/:id/bookings/:id', to: 'bookings#update'
  delete 'experts/:id/coffee_chats/:id/bookings/:id', to: 'bookings#destroy'

  get 'dashboard', to: 'pages#dashboard'
  get 'profile', to: 'pages#profile'
  get 'confirmation', to: 'pages#confirmation'
  get 'become-an-expert', to: 'pages#become_an_expert'
  get 'about-us', to: 'pages#about_us'

  post 'bookings/:id/reviews', to: 'reviews#create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
