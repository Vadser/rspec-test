Rails.application.routes.draw do
  resources :transactions do
    member do
      post :convert
    end
  end
  devise_for :users
  root to: 'transactions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
