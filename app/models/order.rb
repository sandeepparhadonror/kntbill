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

  # ransacker :created_at, type: :date do
  #   Arel.sql('date(created_at)')
  # end

  # ransacker :updated_at, type: :date do
  #   Arel.sql("date(updated_at)")
  # end

  ransacker :created_on, formatter: proc { |value| Date.parse(value).strftime('%Y-%m-%d') } do
    Arel.sql("DATE(orders.created_at)")
  end

  #Need product price and Note
end
