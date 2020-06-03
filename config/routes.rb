Rails.application.routes.draw do
  resources :images
  resources :albums, :has_many => :images
  get 'info/index'
  get 'images/:id', to: 'images#index', as: 'backto'
  root 'info#index'
end
