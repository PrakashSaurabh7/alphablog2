Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "new" => "articles#new"
  post "add" => "articles#add"
  root "articles#showAll"
  get "showById/:id" => "articles#showById"
  get "edit/:id" => "articles#edit"
  patch "update/:id" => "articles#update"
  delete "delete/:id" => "articles#delete"
end
