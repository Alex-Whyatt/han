Rails.application.routes.draw do
  resources :images do 
  	resources :albums
  end
  resources :albums, :has_many => :images
  get 'info/index'
  get '/album/:album_id/', to: 'albums#index'
  get '/album/:album_id/image', to: 'images#index'
  get '/album/:album_id/image/:image_id', to: 'images#show'
  root 'albums#index'
end
