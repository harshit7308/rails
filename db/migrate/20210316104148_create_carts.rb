class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :user__id
      t.integer :shoe_id
      t.integer :quntity
      t.decimal :price
      t.decimal :total

      t.timestamps
    end
  end
end
