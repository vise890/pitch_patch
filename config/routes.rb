Inception::Application.routes.draw do
  resources :pitches, except: [:edit, :update, :destroy]

  root to: 'pitches#index'
end
