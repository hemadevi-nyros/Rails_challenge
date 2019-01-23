class AddMealIdToDishes < ActiveRecord::Migration[5.2]
  def change
  	add_column :dishes, :meal_id, :integer
  end
end
