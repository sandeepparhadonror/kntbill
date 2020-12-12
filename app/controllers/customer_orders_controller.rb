class CustomerOrdersController < ApplicationController

  def index
    @customer = Customer.find_by(id: params[:customer_id])
    @pagy, @customer_orders = pagy(@customer.orders, items: 5)
  end

  def show
    @cusromer_order = CustomerOrder.find_by(order_id: params[:id])
    customer_id = CustomerOrder.find_by(order_id: params[:id]).try(&:customer_id)
    @customer = Customer.find_by(id: customer_id)
    @cusromer_order = CustomerOrder.new
  end

  def new
    @customer = Customer.find_by(id: params[:customer_id])   
    @customer_order =  Order.new
  end

  def create
    @customer = Customer.find_by(email: params[:order][:email])
    @customer_order = Order.create(order_params)
    if @customer_order.save
      @customer.customer_orders.create!(order: @customer_order)
      redirect_to @customer_order
    else
      render 'new'
    end 
  end

  def edit
    @order = Order.find_by(id: params[:id])
    customer_id = CustomerOrder.find_by(order_id: params[:id]).try(&:customer_id)
    @customer = Customer.find_by(id: customer_id) 
  end

  def update
    customer_id = Customer.find_by(email: params[:order][:email])
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to customer_orders_path(customer_id: customer_id)
    else
      render 'edit'
    end 
  end

  



  def order_params
    params.require(:order).permit(:product_id, :order_type, :unit_of_order, :order_product_price,
                                  :total_amount, :paid_amount, :balance_amount, :shipped_date, :shipping_address,
                                  :ship_via, :ship_courier_name, :note, :email, :mobile_no, :customer_name)
  end

end
