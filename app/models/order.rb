class Order < ApplicationRecord

  #Initial Many to Many through accssotion
  has_many :customer_orders
  has_one :customer, through: :customer_orders
  belongs_to :product

  attr_accessor :customer_name, :email, :mobile_no
  validates :order_type, :shipped_date, :ship_via, :ship_courier_name, :shipping_address, presence: true
  validates :unit_of_order, :total_amount, :paid_amount, :balance_amount, :order_product_price, presence: true
  validates :note, :product_id, presence: true

  ORDERTYPE = ["Sales", "Purchase"]

  #Need product price and Note
end
