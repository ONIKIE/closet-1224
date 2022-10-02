Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
 
  get 'items/index'
 root to: "items#index"
 resources :items
 devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  # マイページのルーティング
  get 'users/:id/profile', to: 'users#show', as: 'user_profile'
end
end

