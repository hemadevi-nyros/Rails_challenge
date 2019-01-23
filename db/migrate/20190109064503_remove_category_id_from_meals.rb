class RemoveCategoryIdFromMeals < ActiveRecord::Migration[5.2]
  def change
  	remove_column :meals, :category_id, :integer
  end
end
