Inception::Application.routes.draw do

  devise_for :users

  resources :pitches do
    resources :participation_requests, only: :create
  end

  root to: 'pitches#index'
end
