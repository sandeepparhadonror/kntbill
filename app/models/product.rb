class Product < ApplicationRecord

  validates :product_name, :product_unit_price, :supplier_name, :unit_in_stock, :units_of_order, presence: true
  
  PRODUCTNAME = Product.all.map{ |p| [p.product_name, p.id] }

end
