Rails.application.routes.draw do

  devise_for :admins, path: 'admins'
  devise_for :users, path: 'users'
  root 'homes#index'
  resources :homes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
