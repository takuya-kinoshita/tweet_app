Rails.application.routes.draw do

  get "login" => "users#login_form"
  post "login" => "users#login"

  post "users/:id/update" => "users#update"
  get 'users/index'
  get "users/:id/edit" => "users#edit"
  get "/signup" => "users#new"
  post "/users/create" => "users#create"




  get "users/:id" => "users#show"
  get 'posts/index' => "posts#index"
  get '/' => "home#top"
  get "about" => "home#about"
  get "/posts/new" => "posts#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
end
