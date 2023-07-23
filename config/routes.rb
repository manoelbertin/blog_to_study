Rails.application.routes.draw do
  get '/home', controller: 'home', action: 'index'

  # get '/vehicles', controller: 'vehicles', action: 'index'

  # get '/vehicles/new', controller: 'vehicles', action: 'new'

  # post '/vehicles', controller: 'vehicles', action: 'create'

  # get '/vehicles/:id', controller: 'vehicles', action: 'show'

  # get '/vehicles/:id/edit', controller: 'vehicles', action: 'edit'

  # put '/vehicles/:id', controller: 'vehicles', action: 'update'
  # patch '/vehicles/:id', controller: 'vehicles', action: 'update'

  # delete '/vehicles/:id', controller: 'vehicles', action: 'destroy'

  ### aqui está o PADRAO RESTFull

  resources :vehicles
  #resources :vehicles#, only: %i[ index new create show edit update destroy]
end
