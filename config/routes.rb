Rails.application.routes.draw do
  resources :courses
  root 'homes#index'
end
