class DropDietarians < ActiveRecord::Migration[5.2]
  def change
  	drop_table :dietarians
  end
end
