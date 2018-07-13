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

      get "/followeds/:id/posts", to: "posts#show"
      get "/followeds/:id/posts/:id", to: "posts#post" 
      
      post "/posts/:id/like", to: "likes#create"
      post "/posts/:id/unlike", to: "likes#destroy"

    end
  end
end
