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
      post "/guide", to: "guides#create"
      post "/steps", to: "steps#create"
      post "/steps", to: "steps#create"
      
      get "/guide/:id/reviews", to: "reviews#list"
      post "/guide/:id/reviews", to: "reviews#create"
      post "/reviews", to: "reviews#destroy"

      get "/user/:id/posts", to: "posts#show"

      get "/post/:id/likes", to: "likes#list"
      post "/post/like", to: "likes#create"
      post "/post/unlike", to: "likes#destroy"

      get "/user/:id/questionnaires", to: "questionnaires#show"
      post "/user/:id/questionnaires", to: "questionnaires#add"
      post "/questionnaire/:id", to: "questionnaires#destroy"
      get "/questionnaire/:id", to: "questionnaires#questionnaire"
    end
  end
end
