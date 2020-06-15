Rails.application.routes.draw do
  resources :images do 
  	resources :albums
  end
  resources :albums, :has_many => :images
  get 'info/index'
  get '/album/:album_id/images', to: 'images#show', as: 'imgshow'
  root 'albums#index'
end
