Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies
  resources :polls
  resources :poll_options
  root 'welcome#index'
end
