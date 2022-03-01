Rails.application.routes.draw do

  get 'hdsrs/index'
  get 'hdsrs/create'
  devise_for :users
  root to: 'patients#index'
  resources :patients, only: [:index, :new, :create, :show] do
    resources :hdsrs, only: [:index, :create] 
  end


end
