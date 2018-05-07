Rails.application.routes.draw do

  resources :conversations do
    resources :messages
  end

  post 'bookings/new'
  get 'bookings/new'

  post 'bookings/create'
  get 'bookings/create'

  get 'bookings/owner_cars'

  get 'bookings/owner_bookings'

  get 'bookings/previous_bookings'

  get 'bookings/guest_trips'

  get 'bookings/previous_trips'


  # get ':controller(/:action(/:id))'

  resources :charges

  resources :cars

  devise_for :users

  get 'home/home'

  get 'home/how_it_works'

  get 'home/pricing'

  root to: "home#home"

end
