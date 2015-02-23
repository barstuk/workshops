Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  resources :users, only: [:show, :index]
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
