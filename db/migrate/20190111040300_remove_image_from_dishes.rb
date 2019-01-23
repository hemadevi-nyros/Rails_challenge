class RemoveImageFromDishes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :dishes, :image, :blob
  end
end
