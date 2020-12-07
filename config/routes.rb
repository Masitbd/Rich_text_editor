Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users
  root 'homes#index'
end
