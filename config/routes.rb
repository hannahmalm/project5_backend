Rails.application.routes.draw do

  #http://localhost:3000/api/v1

  namespace :api do 
    namespace :v1 do 
      resources :logs
      resources :runs
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
