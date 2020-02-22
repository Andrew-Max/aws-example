Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/aws", to: "test#aws"
  get "/aws2", to: "test#aws2"
  get "/aws3", to: "test#aws3"
end
