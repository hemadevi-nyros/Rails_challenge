class DishesRestaurantsController < ApplicationController
  def index
  	@dishes_restaurants = DishesRestaurant.all
  end
end
