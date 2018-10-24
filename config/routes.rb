Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch '/capture', to: "pokemons#capture", as: :capture
  patch '/damage', to: "pokemons#damage", as: :damage
  resources :trainers
  resources :pokemons
end
