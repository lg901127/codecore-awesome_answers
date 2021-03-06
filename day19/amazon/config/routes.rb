Rails.application.routes.draw do
  root "products#index"
  #
  # get "/products/new" => "products#new", as: :new_product
  # post "/products" => "products#create", as: :products
  #
  # get "/products/:id" => "products#show", as: :product
  # get "/products" => "products#index"
  #
  # get "/products/:id/edit" => "products#edit", as: :edit_product
  # patch "/products/:id" => "products#update"
  #
  # delete "/products/:id" => "products#destroy"
  resources :users
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end
  resources :products do
    resources :reviews
  end
end
