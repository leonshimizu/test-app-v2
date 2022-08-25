Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/photos" => "photos#index"
  post "/photos" => "photos#create"
  get "/photos/:id" => "photos#show"
  patch "/photos/:id" => "photos#update"
  delete "/photos/:id" => "photos#delete"
end
