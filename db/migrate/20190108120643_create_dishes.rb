class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price
      t.blob :image
      t.decimal :rating
      t.integer :category_id

      t.timestamps
    end
  end
end
