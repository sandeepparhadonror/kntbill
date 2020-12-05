class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string   :first_name
      t.string   :middle_name 
      t.string   :last_name
      t.string   :email
      t.string   :company_name
      t.string   :refer_by
      t.bigint   :mobile_no, :limit => 8
      t.text     :address
      t.string   :city 
      t.timestamps
    end
  end
end
