Rails.application.routes.draw do

  resources :cars

  devise_for :users

  get 'home/home'

  get 'home/how_it_works'

  get 'home/pricing'

  root to: "home#home"

end
