Rails.application.routes.draw do

  resources :conversations do
    resources :messages
  end

  resources :charges

  resources :cars

  devise_for :users

  post 'bookings/new'
  get 'bookings/new'

  post 'bookings/create'
  get 'bookings/create'

  get 'bookings/owner_cars'
  post 'bookings/owner_cars'

  get 'bookings/owner_bookings'

  get 'bookings/previous_bookings'

  get 'bookings/guest_trips'

  get 'bookings/previous_trips'

  root to: "home#home"

end
