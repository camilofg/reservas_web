Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace 'api' do 
    namespace 'v1' do
      resources :places
      resources :fields
    end
  end
  
  root to: "pages#home"
  get "/login", to: "pages#home"
  get "/field", to: "pages#home"
end
