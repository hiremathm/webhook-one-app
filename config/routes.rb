Rails.application.routes.draw do
  resources :users
  root 'users#index'
    get 'user/webhook', :to => 'users#webhook', :as => :user_webhook
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
