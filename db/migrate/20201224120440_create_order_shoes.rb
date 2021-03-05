class CreateOrderShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_shoes do |t|
      t.decimal :price
      t.string :discount_type
      t.decimal :discount
      t.decimal :total

      t.timestamps
    end
  end
end
