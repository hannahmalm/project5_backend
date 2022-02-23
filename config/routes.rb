Rails.application.routes.draw do

  #http://localhost:3000/api/v1


  #namespacing so you can only access the logs nested inside of a run type
  #there is a run Id asscoiated with request
  namespace :api do 
    namespace :v1 do 
      resources :runs do
        resources :logs 
      end 
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
