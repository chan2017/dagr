Rails.application.routes.draw do
  get 'queries/selectrng'
  get 'queries/showrng'
  get 'queries/index'
  get 'queries/searchque'
  get 'queries/showres'
  get 'queries/changecat'
 post 'queries/complete'
  


  root 'queries#index'
  resources :articles
  resources :entries
  resources :categories


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
