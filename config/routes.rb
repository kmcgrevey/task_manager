Rails.application.routes.draw do

  get '/', to: 'welcome#index'

  resources :tasks
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/new', to: 'tasks#new'
  # post '/tasks', to: 'tasks#create'
  # get '/tasks/:id', to: 'tasks#show'
  # get '/tasks/:id/edit', to: 'tasks#edit'
  # patch '/tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
end
