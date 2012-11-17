Inception::Application.routes.draw do

  resources :pitches, except: [:edit, :update, :destroy] do
    resources :participation_requests, only: :create
  end

  root to: 'pitches#index'
end
