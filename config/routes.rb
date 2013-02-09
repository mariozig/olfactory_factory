OlfactoryFactory::Application.routes.draw do
  resources :things
  resources :adjectives
  root :to => 'things#index'
end