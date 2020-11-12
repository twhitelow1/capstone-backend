Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    get "/users" => "users#index"
    get "/users/:id" => "users#show"

    post "/sessions" => "sessions#create"

    get "/chores" => "chores#index"

    get "/homes" => "homes#index"
    get "/home" => "homes#show"

    get "/assignments" => "assignments#index"
    get "/assignments/:id" => "assignments#show"
    post "/assignments" => "assignments#create"
    patch "/assignments/:id" => "assignments#update"
  end
end
