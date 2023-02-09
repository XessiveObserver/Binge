Rails.application.routes.draw do
  devise_for :users
  get 'binge_static_pages/index'
  get 'binge_static_pages/about'
  get 'binge_static_pages/contact'

  resources :movies

  
  root "binge_static_pages#index"
end
