Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get "/items/find_all", to: 'items/search#index'
      get "/items/find", to: 'items/search#show'
      resources :items do
        get :merchants, only: :show, to: 'items/merchants#index'
      end

      get '/merchants/find', to: 'merchants/search#show'
      get '/merchants/find_all', to: 'merchants/search#index'
      resources :merchants do
        get :items, only: :show, to:'merchants/items#index'
      end



    end
  end
end
