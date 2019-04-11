Rails.application.routes.draw do
  root to: 'pages#main'
  # any other 'pages#???' routes needed?

  # routes needed for search/weight models?
  # any nested routes needed for archetype?
  resources :archetypes
  resources :base_characters
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
