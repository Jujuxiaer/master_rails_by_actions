Rails.application.routes.draw do
  root 'welcome#index'

  resources :users
  resources :sessions
  delete '/logout' => 'sessions#destroy', as: :logout

  namespace :admin do
    root 'sessions#new'
    resources :sessions
    resources :categories
    resources :products
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
