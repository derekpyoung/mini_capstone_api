Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products", to: "products#index"
  get "/products/:id", to: "products#show"
  post "/products", to: "products#create"
  delete "/products/:id", to: "products#destroy"
  patch "/products/:id", to: "products#update"
  get "/suppliers", to: "suppliers#index"
  get "/suppliers/:id", to: "suppliers#show"
  post "/images", to: "images#create"

 
end


