class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.text :description
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
