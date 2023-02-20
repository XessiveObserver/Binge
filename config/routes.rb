Rails.application.routes.draw do
  devise_for :users
  get 'binge_static_pages/index'

  resources :movies do
    resources :comments
  end

  
  root "binge_static_pages#index"
end
