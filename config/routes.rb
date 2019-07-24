Rails.application.routes.draw do
  
  resources :articles
    get 'home/index'
    devise_for :users
	root to: "home#index"

	resources :products
end
