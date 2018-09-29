Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :home
  root to: 'home#index' 

  namespace :admin do
   resources :session
   resources :dashboard
   resources :users   
   root 'session#new'
  end
end
