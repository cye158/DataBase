class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true, foreign_key: true
      t.string :order_detail

      t.timestamps null: false
    end
  end
end
