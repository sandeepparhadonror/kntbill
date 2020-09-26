class Customer
   id, first_name, middle_name, last_name, email, gender, address, city, customer_mob_no, references_by, company_name
end

class Product
  id, product_name, product_unit_price, supplier_name, unit_in_stock, units_of_order
end

class order
  id, shipped_date, ship_via, ship_name, shipping_address, unit_of_order, total_amount, paid_amount, balance_amount
  customer_id

end

class OrdersProduct
  id, order_id, product_id
end




 class Order < ActiveRecord::Base
   has_many :orders_products
   has_many :products, through: :orders_products
  end
  
  class Product < ActiveRecord::Base
    has_many :orders_products
    has_many :orders, through: :orders_products
  end
  
  class OrdersProduct < ActiveRecord::Base
    belongs_to :order
    belongs_to :product
  end