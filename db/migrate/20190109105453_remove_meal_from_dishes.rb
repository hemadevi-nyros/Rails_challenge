class RemoveMealFromDishes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :dishes, :meal, foreign_key: true
  end
end
