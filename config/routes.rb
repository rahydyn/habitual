Rails.application.routes.draw do
  get "/" => "home#top"
  get "/login"  =>  "users#login_form"
  get "/signup" =>  "users#new"
  post "/login" => "users#login"
  post "/users/create"  => "users#create"
end
