Rails.application.routes.draw do
  devise_for :users do
    resources :animals, only: [ :new, :create, :update, :delete ]
  end

  resources :partners
  get '/become_a_partner', to: 'partners#become_partner'

  resources :animals do
    resources :adoptions, only: [:create]
  end

  get 'confirmation', to: 'animals#confirmation'
  get 'my_animals', to: 'animals#my_animals'

  resources :adoptions, only: [:show]

  get '/rescued_animals', to: 'rescued_animals#index'

  get '/adopted_pets', to: 'pages#adopted_pets'
  patch '/animals/:id/rescue', to: 'animals#rescue', as: :rescue

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
