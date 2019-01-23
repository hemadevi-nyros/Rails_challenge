Rails.application.routes.draw do
  
  root to: "dishes#index"
  get '/search' => 'dishes#search', :as => "search"
  get '/dish_list' => 'dishes#dish_list', :as => "dish_list"
  resources :dishes, :restaurants, :dishes_restaurants
end
