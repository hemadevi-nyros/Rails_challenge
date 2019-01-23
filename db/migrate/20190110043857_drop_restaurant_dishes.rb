class DropRestaurantDishes < ActiveRecord::Migration[5.2]
  def change
  	drop_table :restaurant_dishes
  end
end
