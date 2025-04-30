Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "new" => "articles#new"
  post "add" => "articles#add"
  get "showAll", to: "articles#showAll"
  get "showById/:id" => "articles#showById"
  get "edit/:id" => "articles#edit"
  patch "update/:id" => "articles#update"
  delete "delete/:id" => "articles#delete"

  # get "signup", to: "users#new"
  root "users#new"
  post "users/add", to: "users#create"
  get "users/edit/:id" => "users#edit"
  patch "users/update/:id" => "users#update"
end
