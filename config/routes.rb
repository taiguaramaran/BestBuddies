Rails.application.routes.draw do
  devise_for :users do
    resources :animals, only: [:new, :create, :update]
  end

  root to: 'pages#home'

  resources :animals do
    resources :adoptions, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
