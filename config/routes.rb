Rails.application.routes.draw do
  resources :notes
  resources :tasks
  resources :users
  get '/users/find_by_username', to: 'users#show'
  get '/users/:id/get_notes', to: 'users#get_notes'
end
