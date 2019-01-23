class CreateDishesRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes_restaurants do |t|
      t.references :restaurant, foreign_key: true
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
