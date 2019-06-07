Rails.application.routes.draw do
  get 'dogs/sort-by-owners', to: "dogs#sort_by_owners", as: "sort_by_owners"
  get '/', to: "application#index", as: "main_page"
  resources :dogs
  resources :employees

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
