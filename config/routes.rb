Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/drivers', to: 'drivers#index', as: 'drivers'

  get '/drivers/new', to: 'drivers#new', as: 'new_driver'

  post '/drivers', to: 'drivers#create'

  get '/drivers/:id', to: 'drivers#show', as: 'driver'

  get '/drivers/:id/edit', to: 'drivers#edit', as: 'edit_driver'

  patch '/drivers/:id', to: 'drivers#update'

  put '/drivers/:id', to: 'drivers#update'

  delete '/drivers/:id', to: 'drivers#destroy'



  get '/passengers', to: 'passengers#index', as: 'passengers'

  get '/passengers/new', to: 'passengers#new', as: 'new_passenger'

  post '/passengers', to: 'passengers#create'

  get '/passengers/:id', to: 'passengers#show', as: 'passenger'

  get '/passengers/:id/edit', to: 'passengers#edit', as: 'edit_passenger'

  patch '/passengers/:id', to: 'passengers#update'

  put '/passengers/:id', to: 'passengers#update'

  delete '/passengers/:id', to: 'passengers#destroy'



  get '/trips', to: 'trips#index', as: 'trips'

  get '/trips/new', to: 'trips#new', as: 'new_trip'

  post '/trips', to: 'trips#create'

  get '/trips/:id', to: 'trips#show', as: 'trip'

  get '/trips/:id/edit', to: 'trips#edit', as: 'edit_trip'

  patch '/trips/:id', to: 'trips#update'

  put '/trips/:id', to: 'trips#update'

  delete '/trips/:id', to: 'trips#destroy'
end
