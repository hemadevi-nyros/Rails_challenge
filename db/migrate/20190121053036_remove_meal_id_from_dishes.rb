class RemoveMealIdFromDishes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :dishes, :meal_id, :integer
  end
end
