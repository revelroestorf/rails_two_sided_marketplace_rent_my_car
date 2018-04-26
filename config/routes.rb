Rails.application.routes.draw do
  get 'home/home'

  get 'home/how_it_works'

  get 'home/pricing'

  devise_for :users
  root to: "home#home"
end
