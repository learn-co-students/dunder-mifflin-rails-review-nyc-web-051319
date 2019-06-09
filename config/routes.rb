Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #dogs index
  get '/dogs', to: 'dogs#index'

  #employees index
  get '/employees', to: 'employees#index'

  #employee new
  get '/employees/new', to: 'employees#new'

  #employee edit
  get '/employees/:id/edit', to: 'employees#edit'

  #dogs show
  get '/dogs/:id', to: 'dogs#show', as: 'dog'

  #employees show
  get '/employees/:id', to: 'employees#show', as: 'employee'

  #employee create
  post '/employees', to: 'employees#create'

  #employee update
  patch '/employees/:id', to: 'employees#update'

  delete '/employees/:id', to: 'employees#delete'

end
