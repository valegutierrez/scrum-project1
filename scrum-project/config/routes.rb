Rails.application.routes.draw do
  resources :products do
    member do
      get 'buy'
    end
    collection do
      get 'bought' 
    end
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
