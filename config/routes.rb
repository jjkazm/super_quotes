Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "quotes#index"
  resources :quotes, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
  mount ActionCable.server, at: '/cable'
  config.action_cable.url = 'wss://jjkazm-super-quote-action.herokuapp.com/cable'
  config.action_cable.allowed_request_origins = [
    'https://jjkazm-super-quote-action.herokuapp.com' ]
end
