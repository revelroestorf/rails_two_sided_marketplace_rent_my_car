Rails.application.routes.draw do

  resources :conversations, except: [:create] do
    resources :messages
  end

  post 'conversations', to: 'conversations#create'
  get 'conversations', to: 'conversations#create'

  resources :charges
  # get 'charges', to: 'cars#index'


  resources :cars
  # , except: [:index, :show, :create]
  #
  # post 'cars/create'
  #
  post 'cars/index'
  # get 'cars', to: 'cars#index'


  devise_for :users

  resources :bookings, except: [:show]


  # post 'bookings/new'
  # get 'bookings/new'
  #
  #
  # post 'bookings/create'
  # get 'bookings/create'

  post 'bookings/owner_cars'
  get 'bookings/owner_cars'

  post 'bookings/owner_bookings/:car_id', to: 'bookings#owner_bookings', as: 'bookings_owner_bookings'
  get 'bookings/owner_bookings/:car_id', to: 'bookings#owner_bookings', as: 'owner_bookings'


  get 'bookings/previous_bookings/:car_id', to: 'bookings#previous_bookings', as: 'bookings_previous_bookings'

  get 'bookings/guest_trips'

  get 'bookings/previous_trips'

  root to: "home#home"

end
