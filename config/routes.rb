Map::Application.routes.draw do
  resources :libraries

  root :to => 'libraries#index'
end
