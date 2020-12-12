class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string   :order_type
      t.datetime :shipped_date
      t.string   :ship_via
      t.string   :ship_courier_name
      t.string   :shipping_address
      t.bigint   :unit_of_order, :limit => 8
      t.bigint   :total_amount, :limit => 8
      t.bigint   :paid_amount, :limit => 8
      t.bigint   :balance_amount, :limit => 8
      t.bigint   :order_product_price, :limit => 4
      t.string   :note
      t.boolean  :order_active, :default => true
      t.belongs_to :product
      t.timestamps
    end
  end
end
