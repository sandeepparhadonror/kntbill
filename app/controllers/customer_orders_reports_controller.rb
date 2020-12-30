class CustomerOrdersReportsController < ApplicationController

def search
  index
  render :index
end

def index
  @q = Customer.ransack(params[:q])
  @customer_orders = @q.result.includes(:orders)
  #@q.build_condition if @q.conditions.empty?
  #@q.build_sort if @q.sorts.empty?
end

end
