Rails.application.routes.draw do
  get 'carted_products/index'
  get 'carted_products/show'
  get 'carted_products/create'
  get 'carted_products/destroy'
  get 'carted_products/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "products#index"
  get "/products/:id", to: "products#show"
  post "/products", to: "products#create"
  delete "/products/:id", to: "products#destroy"
  patch "/products/:id", to: "products#update"


  get "/suppliers", to: "suppliers#index"
  get "/suppliers/:id", to: "suppliers#show"

  post "/images", to: "images#create"

  post "/users", to: "users#create"
  post "/sessions", to: "sessions#create"

  post "/orders", to: "orders#create"
  get "/orders/:id", to: "orders#show"
  get "/orders", to: "orders#index"

  post "/carted_products", to: "carted_products#create"
  get "/carted_products", to: "carted_products#index"
  get "/carted_products/:id", to: "carted_products#show"

 
end




