class DropDishRestaurants < ActiveRecord::Migration[5.2]
  def change
  	drop_table :dish_restaurants
  end
end
