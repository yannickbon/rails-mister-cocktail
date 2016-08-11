class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.integer :cocktail_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
