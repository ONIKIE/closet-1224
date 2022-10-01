Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  # マイページのルーティング
 
  # トップページのルーティング
  
  get 'items/index'
 root to: "items#index"
 resources :items
 devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  get 'users/:id/profile', to: 'users#show', as: 'user_profile'
end
end

