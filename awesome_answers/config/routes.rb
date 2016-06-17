Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end
  get "/about" => "home#about"
  root "home#index"

  get "/greet/:name" => "home#greet", as: :greet

  get "/cowsay" => "cowsay#index"
  post "/cowsay" => "cowsay#create", as: :cowsay_submit

  get "/temp_convertor" => "temp_convertor#index"
  post "/temp_convertor" => "temp_convertor#submit", as: :submit_temp

  get "/bill_spliter" => "bill_spliter#index"
  post "/bill_spliter" => "bill_spliter#submit"

  get "/name_picker" => "name_picker#index"
  post "/name_picker" => "name_picker#submit"

  resources :questions do
    #this will define a route that will be /questions/search
    #it will point to the questions controller "search" action in that controller
    #on: :collection makes the route not have an 'id' or 'question_id' on it
    get :search, on: :collection
    #this will generate a route '/questions/:id/flag' and it will point to questions controller 'flag' action.
    #on: :member makes the route include an ':id' in it similar to the 'edit'
    post :flag, on: :member

    post :mark_done

    #this will make all the answers routes nested within "questions" which means all the answers routes will be prepended with
    #"/questions/:question_id"
    resources :answers, only: [:create, :destroy]
  end
  # get "/questions/new" => "questions#new", as: :new_question
  # post "/questions" => "questions#create", as: :questions
  #
  # get "/questions/:id" => "questions#show", as: :question
  #
  # get "/questions" => "questions#index"
  #
  # get "/questions/:id/edit" => "questions#edit", as: :edit_question
  # patch "/questions/:id" => "questions#update"
  #
  # delete "/questions/:id" => "questions#destroy"
end
