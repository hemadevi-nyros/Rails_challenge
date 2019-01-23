class RemoveImageFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :image, :blob
  end
end
