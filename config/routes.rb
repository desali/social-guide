Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post "/auth/login", to: "auth#login"
    	post "/auth/register", to: "auth#register"
    	
      get "/categories", to: "categories#list"
      get "/categorie/:id", to: "categories#categorie"
      get "/categorie/:id/guides", to: "guides#list"
      
      get "/guide/:id", to: "guides#guide"
      get "/guide/:id/steps", to: "steps#list"
      
      get "/guide/:id/reviews", to: "reviews#list"
      post "/guide/:id/reviews/new", to: "reviews#create"

      get "/user/:id/posts", to: "posts#show"
      get "/user/:id/post/:id", to: "posts#post" 
      
      get "/post/:id/like", to: "likes#list"
      post "/post/:id/like", to: "likes#create"
      post "/post/:id/like/:id", to: "likes#destroy"

      get "/user/:id/questionnaires", to: "questionnaires#show"
      post "/user/:id/questionnaires/new", to: "questionnaires#add"
      post "/user/:id/questionnaire/:id", to: "questionnaires#destroy"
      get "/user/:id/questionnaire/:id", to: "questionnaires#questionnaire"
    end
  end
end
