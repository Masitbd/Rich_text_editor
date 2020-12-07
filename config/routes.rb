Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users
  get 'homes/activity'
  root 'homes#index'
end
