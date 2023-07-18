Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "events#index"

   #get "event/show"
   #get "/events", to: "events#index"
   #get "/events/:id", to: "events#show"
   resources :events
   
end
