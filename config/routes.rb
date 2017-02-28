Rails.application.routes.draw do
  get 'home/index'

  resources :cars
  resources :supplies
  devise_for :users

  	 devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'home#index'
   #root 'supplies#index'
  	root 'home#index'
end
