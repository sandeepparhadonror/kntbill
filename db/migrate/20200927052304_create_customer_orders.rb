class CreateCustomerOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_orders do |t|
      t.belongs_to :order
      t.belongs_to :customer
      t.timestamps
    end
  end
end
