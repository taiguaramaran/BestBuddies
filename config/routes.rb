Rails.application.routes.draw do
  devise_for :users do
    resources :animals, only: [ :new, :create, :update, :delete ]
  end

  resources :partners

  resources :animals do
    resources :adoptions, only: [:create]
  end

  resources :adoptions, only: [:show]

  get '/adopted_pets', to: 'pages#adopted_pets'
  patch '/animals/:id/rescue', to: 'animals#rescue', as: :rescue

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
