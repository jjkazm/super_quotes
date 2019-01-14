Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "quotes#index"
  resources :quotes, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
end
