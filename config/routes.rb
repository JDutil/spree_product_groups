Spree::Core::Engine.routes.draw do

  # Search routes
  match 's/*product_group_query', :to => 'products#index', :as => :simple_search
  match '/pg/:product_group_name', :to => 'products#index', :as => :pg_search
  match '/t/*id/s/*product_group_query', :to => 'taxons#show', :as => :taxons_search
  match 't/*id/pg/:product_group_name', :to => 'taxons#show', :as => :taxons_pg_search

  namespace :admin do
    resources :product_groups do
      resources :product_scopes
    end
  end

end
