Rails.application.routes.draw do
  namespace :public do
    resources :shops, only: [:new, :index, :show, :create, :edit, :update]
    resources :posts, only: [:new, :index, :show, :create, :edit, :update, :destroy]
    resources :users, only: [:mypage, :edit, :show, :update, :destroy]
    get 'homes/top'
    get 'homes/about'
  end

  devise_for :admins

  devise_for :users, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
    passwords: 'public/passwords',
    confirmations: 'public/confirmations',
    unlocks: 'public/unlocks',
    omniauth_callbacks: 'public/omniauth_callbacks'
  }

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "public/homes#top"
end
