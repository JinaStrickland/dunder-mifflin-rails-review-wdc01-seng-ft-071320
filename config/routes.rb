Rails.application.routes.draw do
  resources :dogs, only: [:index, :show, :new, :create]
  resources :employees, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
