Rails.application.routes.draw do
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :images do 
  	resources :albums
  end
  resources :albums, :has_many => :images
  get 'info/index'
  get '/album/:album_id/', to: 'albums#index'
  get '/album/:album_id/image', to: 'images#index'
  get '/album/:album_id/image/:image_id', to: 'images#show'
  root to: 'albums#index'
end
