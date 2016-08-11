class AddForeignKeysToDoses < ActiveRecord::Migration[5.0]
 def change
  remove_column :doses, :cocktail_id, :integer
  remove_column :doses, :ingredient_id, :integer
  add_reference :doses, :ingredient, index: true, foreign_key: true
  add_reference :doses, :cocktail, index: true, foreign_key: true
 end
end
