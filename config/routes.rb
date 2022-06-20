Rails.application.routes.draw do
  root "page_saver#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/save_page", :to => "page_saver#create"
end
