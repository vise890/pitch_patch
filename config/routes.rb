Inception::Application.routes.draw do

  devise_for :users

  resources :pitches, except: [:edit, :update, :destroy] do
    resources :participation_requests, only: :create
  end

  root to: 'pitches#index'
end
