class AddCategoryReferencesToProjects < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
  		t.references :category
  	end
  	add_index :projects, :category_id
  end
end
