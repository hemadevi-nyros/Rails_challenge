class RemoveDietarianFromDishes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :dishes, :dietarian, foreign_key: true
  end
end
