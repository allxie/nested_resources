Rails.application.routes.draw do
  root to: "authors#index"

  get "/authors" => "authors#index"

  get "/authors/new" => "authors#new"

  post "/authors" => "authors#create"

  get "/authors/:id" => "authors#show"

  get "/authors/:id/edit" => "authors#edit"

  post "/authors/:id" => "authors#update"

  post "/authors/:id" => "authors#destroy"




end
