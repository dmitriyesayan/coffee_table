Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  root to: 'pages#home'

  # get 'experts', to: 'users#index'
  # get 'experts/:id', to: "users#show", as: :expert

  get 'experts/:id/coffee_chats', to: 'coffee_chats#index'
  patch 'experts/:id/coffee_chats', to: 'coffee_chats#update'
  delete 'experts/:id/coffee_chats', to: 'coffee_chats#destroy'
  post 'coffee_chats', to: 'coffee_chats#create'
  get 'dashboard/new', to: 'coffee_chats#new'

  resources :experts, controller: 'users', only: [:index, :show, :update] do
    resources :bookings
  end
  # get 'experts/:id/coffee_chats/:id/bookings', to: 'bookings#new', as: 'new_booking'
  # post 'experts/:id/coffee_chats/:id/bookings', to: 'bookings#create'
  get 'bookings/:id', to: 'bookings#show', as: :booking
  # patch 'experts/:id/coffee_chats/:id/bookings/:id', to: 'bookings#update'
  # delete 'experts/:id/coffee_chats/:id/bookings/:id', to: 'bookings#destroy'

  get 'dashboard', to: 'pages#dashboard'
  get 'profile', to: 'pages#profile'
  get 'confirmation', to: 'pages#confirmation'
  get 'become-an-expert', to: 'pages#become_an_expert'
  get 'about-us', to: 'pages#about_us'

  post 'bookings/:id/reviews', to: 'reviews#create'
  post 'bookings/:id/messages/:id', to: 'messages#create', as: :booking_messages
  post 'bookings/:id/reviews', to: 'reviews#create', as: :booking_reviews

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
