class AddDietarianToDishes < ActiveRecord::Migration[5.2]
  def change
    add_reference :dishes, :dietarian, foreign_key: true
  end
end
