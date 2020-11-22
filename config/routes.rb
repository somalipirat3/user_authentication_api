Rails.application.routes.draw do

  root "home#index"

  namespace :api do

    namespace :auth do 
      post '/signin', to: "sessions#signin"
      delete '/signout', to: "sessions#signout"
      get '/all', to: 'users#all'

    end
    
    namespace :v1 do 
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
