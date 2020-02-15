Rails.application.routes.draw do
  get "/", to: "trucks#index"
  get "/trucks", to: "trucks#index"
  post "/truck", to: "trucks#create"
  get "/truck", to: "trucks#index"
  get "/truck/open", to: "trucks#open"
  get "/truck/closed", to: "trucks#closed"
  get "/truck/:id", to: "trucks#show"
  put "/truck/:id", to: "trucks#update"
  delete "/truck/:id", to: "trucks#destroy"
end