Rails.application.routes.draw do
  resources :events
  #get 'ticketing/index'

  root 'ticketing#index'
  get 'ticketing/tickets'
  get 'ticketing/payment'
  get 'ticketing/code'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
