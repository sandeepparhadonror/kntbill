class Customer < ApplicationRecord

    #Initial Many to Many through accssotion 
    has_many :customer_orders
    has_many :orders, through: :customer_orders

    #validation
    validates :first_name, :middle_name, :last_name, :mobile_no, :email, :company_name, :refer_by, :city, :address, presence: true

    def customer_full_name
      first_name.to_s + " " + middle_name.to_s + " " + last_name.to_s
    end

    def company_full_address
        address.to_s + " " + address.to_s
    end

    def active_order
      orders.where(order_active: true)
    end
    
    def complete_amount
      active_order.empty? ? 0 : self.active_order.sum(&:total_amount) 
    end

    def remening_amount
      active_order.empty? ? 0 : self.active_order.sum(&:balance_amount)
    end

    def pending_amount
      active_order.empty? ? 0 : self.active_order.sum(&:paid_amount)
    end

    def total_unit_of_order
      active_order.empty? ? 0 : self.active_order.sum(&:unit_of_order)
    end

end
