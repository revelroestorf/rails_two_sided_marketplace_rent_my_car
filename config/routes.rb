Rails.application.routes.draw do

  resources :conversations, except: [:create] do
    resources :messages
  end

  post 'conversations', to: 'conversations#create'
  get 'conversations', to: 'conversations#create'

  resources :charges
  # get 'charges', to: 'cars#index'


  resources :cars, except: [:index]

  post 'cars/index'
  get 'cars', to: 'cars#index'


  devise_for :users

  resources :bookings


  post 'bookings/new'
  get 'bookings/new'


  post 'bookings/create'
  get 'bookings/create'

  get 'bookings/owner_cars'
  post 'bookings/owner_cars'

  get 'bookings/owner_bookings'
  post 'bookings/owner_bookings'


  get 'bookings/previous_bookings'

  get 'bookings/guest_trips'

  get 'bookings/previous_trips'

  root to: "home#home"

end
