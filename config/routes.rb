Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read
  get '/tasks', to: 'tasks#index', as: 'index'

  # create
  get '/tasks/new', to: 'tasks#new', as: :new
  get '/tasks/:id', to: 'tasks#show', as: 'show'
  post '/tasks', to: 'tasks#create', as: 'create'

  # update
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch '/tasks/:id', to: 'tasks#update', as: 'task'

  # delete
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy'
end
