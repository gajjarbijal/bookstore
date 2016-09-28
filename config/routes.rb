Rails.application.routes.draw do
  root 'books#index'
  
  resources :publishers

  resources :authors

  resources :categories, :books

  #resources :books

  get 'about/index'

  get 'about' => 'about#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
