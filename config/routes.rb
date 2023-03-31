Rails.application.routes.draw do
  get "/songs" => "songs#index"
  post "songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
