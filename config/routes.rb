Rails.application.routes.draw do

  devise_for :users
  root to: 'patients#index'
  resources :patients, only: [:index, :new, :create, :show, :destroy] do
    resources :hdsr_logs, only: [:index, :create, :show, :destroy] 
  end



end
