class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string   :product_name
      t.integer  :product_unit_price, :limit => 8
      t.string   :supplier_name
      t.bigint   :unit_in_stock, :limit => 8
      t.bigint   :units_of_order, :limit => 8
      t.boolean  :product_active, :default => true
      t.timestamps
    end
  end
end
