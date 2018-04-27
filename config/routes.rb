Rails.application.routes.draw do

  resources :charges

  resources :cars

  get ':controller(/:action(/:id))'

  get 'cars/book'

  devise_for :users

  get 'home/home'

  get 'home/how_it_works'

  get 'home/pricing'

  root to: "home#home"

end
