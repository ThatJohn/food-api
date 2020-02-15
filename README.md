# John's food API

This is a small project to practice my Rails skills. I wasn't really intending to upload it.

Just clone, run `bundle install`, run `rails s` and hit these endpoints with Postman or similar:

* get "/", to: "trucks#index"
* get "/trucks", to: "trucks#index"
* post "/truck", to: "trucks#create"
* get "/truck", to: "trucks#index"
* get "/truck/open", to: "trucks#open"
* get "/truck/closed", to: "trucks#closed"
* get "/truck/:id", to: "trucks#show"
* put "/truck/:id", to: "trucks#update"
* delete "/truck/:id", to: "trucks#destroy"