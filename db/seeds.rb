# class Customer
#     id, first_name, middle_name, last_name, email, gender, address, city, customer_mobile_no, refer_by, company_name
#  end
 
#  class Product
#    id, product_name, product_unit_price, supplier_name, unit_in_stock, units_of_order
#  end
 
#  class Order
#    id, shipped_date, ship_via, ship_name, shipping_address, unit_of_order, total_amount, paid_amount, balance_amount
#  end
 
#  class CustomerOrder
#    id, order_id, product_id
#  end

#customer

Customer.create(first_name: "Tejas", middle_name: "Tulshiram", last_name: "Thakur", email: "Tejs@t.com", company_name: "Teja", refer_by: "papu", mobile_no: 212212121, address: "solu", city: "pune")
Customer.create(first_name: "Shubhankar", middle_name: "Tulshiram", last_name: "Thakur", email: "shu@t.com", company_name: "Shubu", refer_by: "pokle", mobile_no: 1221212321, address: "solu", city: "pune")
Customer.create(first_name: "pokle", middle_name: "saheb", last_name: "pokle", email: "pokle@t.com", company_name: "Teja", refer_by: "Dilip", mobile_no: 212212121, address: "solu", city: "Bid")
Customer.create(first_name: "dhone", middle_name: "dhone", last_name: "dhone", email: "Tdhoneejs@t.com", company_name: "Teja", refer_by: "papu", mobile_no: 212212121, address: "solu", city: "Nashik")
Customer.create(first_name: "Jitu", middle_name: "Bhai", last_name: "Bhisa", email: "jitu@t.com", company_name: "jitu", refer_by: "Tulshiram", mobile_no: 212212121, address: "solu", city: "Nashik")
Customer.create(first_name: "cotton", middle_name: "cotton", last_name: "cotton", email: "cotton@t.com", company_name: "cotton", refer_by: "pokle", mobile_no: 212212121, address: "Thane", city: "Thane")


#product

Product.create(product_name: "Spwan", product_unit_price: 85, supplier_name: "kntbio", unit_in_stock: 12300, units_of_order: 1500)      
Product.create(product_name: "motherSpwan", product_unit_price: 105, supplier_name: "kntbio", unit_in_stock: 1200, units_of_order: 500)      
Product.create(product_name: "grain", product_unit_price: 85, supplier_name: "Gitu", unit_in_stock: 12080, units_of_order: 3500)      
Product.create(product_name: "cottan", product_unit_price: 85, supplier_name: "Thane", unit_in_stock: 3400, units_of_order: 300)      

#Order 

Order.create(shipped_date: Time.now, ship_via: " private Bus", ship_courier_name: "Dhine bus", shipping_address: "Nashik", unit_of_order: 345, total_amount: 2324424, paid_amount: 342423, balance_amount: 324244, order_type: "sale", product_id: 1 )
Order.create(shipped_date: Time.now, ship_via: " self", ship_courier_name: "Car", shipping_address: "pune", unit_of_order: 3345, total_amount: 23243424, paid_amount: 3423423, balance_amount: 324244, order_type: "sale", product_id: 2)
Order.create(shipped_date: Time.now, ship_via: " self", ship_courier_name: "Car", shipping_address: "pune", unit_of_order: 3345, total_amount: 23243424, paid_amount: 3423423, balance_amount: 324244, order_type: "sale", product_id: 1)
Order.create(shipped_date: Time.now, ship_via: " self", ship_courier_name: "Car", shipping_address: "pune", unit_of_order: 33445, total_amount: 23243424, paid_amount: 3423423, balance_amount: 324244, order_type: "purchase", product_id: 3)
Order.create(shipped_date: Time.now, ship_via: " self", ship_courier_name: "Car", shipping_address: "pune", unit_of_order: 33445, total_amount: 23243424, paid_amount: 3423423, balance_amount: 324244, order_type: "purchase", product_id: 3)
Order.create(shipped_date: Time.now, ship_via: " self", ship_courier_name: "Car", shipping_address: "pune", unit_of_order: 33445, total_amount: 23243424, paid_amount: 3423423, balance_amount: 324244, order_type: "purchase", product_id: 4)

#customerOrders

customer1 = Customer.first
customer2 = Customer.second
customer5 = Customer.find_by(id: 5)
order1 = Order.first
order2 = Order.second
order4 = Order.find_by(id: 4)
order5 = Order.find_by(id: 5)

customer1.customer_orders.create(order: order1)
customer1.customer_orders.create(order: order2)

customer5.customer_orders.create(order: order4)
customer5.customer_orders.create(order: order5)