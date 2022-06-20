require 'sidekiq/web'

Rails.application.routes.draw do
  root "page_saver#index"
  post "/save_page", :to => "page_saver#create"
  mount Sidekiq::Web => "/sidekiq"
end
