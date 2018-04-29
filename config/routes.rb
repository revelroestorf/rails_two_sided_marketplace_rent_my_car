Rails.application.routes.draw do

  get 'booking/index'

  get 'booking/show'

  # get ':controller(/:action(/:id))'

  resources :charges

  resources :cars

  get 'cars/book'

  devise_for :users

  get 'home/home'

  get 'home/how_it_works'

  get 'home/pricing'

  root to: "home#home"

end
