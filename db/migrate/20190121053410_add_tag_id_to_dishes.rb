class AddTagIdToDishes < ActiveRecord::Migration[5.2]
  def change
  	add_column :dishes, :tag_id, :integer
  end
end
