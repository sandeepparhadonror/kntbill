class OrdersController < ApplicationController
  def index
      @pagy, @orders = pagy(Order.all, items:7)
  end

  def show
    @order = Order.find_by(id: params[:id])
    customer_id = CustomerOrder.find_by(order_id: params[:id]).try(&:customer_id)
    @customer = Customer.find_by(id: customer_id)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
    
    def order_params
      params.require(:order).permit(:order_type, :shipped_date, :ship_via, :ship_courier_name, :shipping_address, :unit_of_order, :total_amount, :paid_amount, :balance_amount, :product_id)
    end


end
