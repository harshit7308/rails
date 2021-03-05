class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.integer :brand_id
      t.integer :color_id
      t.integer :size
      t.decimal :price
      t.string :discount_type
      t.integer :discount
      t.string :suitable
      t.string :material

      t.timestamps
    end
  end
end
