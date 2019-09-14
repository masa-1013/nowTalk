Rails.application.routes.draw do
  root to: 'messages#index'
  get 'messages/index'
  post 'messages/index', to: 'messages#create'
end
