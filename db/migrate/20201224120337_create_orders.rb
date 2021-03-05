class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :date
      t.decimal :total
      t.string :discount_type
      t.decimal :discount
      t.decimal :grand_total

      t.timestamps
    end
  end
end
