Rails.application.routes.draw do
  resources :messages, only: [:new, :create, :index]
end
