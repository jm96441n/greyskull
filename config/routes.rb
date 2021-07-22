Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#main"

  resources :profiles, only: [:show, :update]
  resources :profile_routines, only: [:new]
end
