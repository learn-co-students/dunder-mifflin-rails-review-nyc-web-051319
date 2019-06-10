Rails.application.routes.draw do
  get '/dogs/sorted_dogs', to: 'dogs#sorted_dogs'
  resources :dogs
  resources :employees
end
