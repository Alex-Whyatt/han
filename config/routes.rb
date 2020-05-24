Rails.application.routes.draw do
  resources :images
  resources :albums, :has_many => :images
  get 'info/index'
  root 'info#index'
end
