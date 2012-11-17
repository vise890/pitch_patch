Inception::Application.routes.draw do
  get "participation_requests/create"

  resources :pitches, except: [:edit, :update, :destroy] do
    resources :participation_requests, only: :create
  end

  root to: 'pitches#index'
end
