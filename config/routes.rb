Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/chores" => "chores#index"

    get "/assignments" => "assignments#index"
    get "/assignments/:id" => "assignments#show"
    post "/assignments" => "assignments#create"
    put "/assignments/:id" => "assignments#update"
  end
end
