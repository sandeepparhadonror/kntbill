class CustomerOrdersReportsController < ApplicationController
  skip_before_action :verify_authenticity_token
def search
  index
  render :index
end

def index
  @q = Customer.ransack(params[:q])
  @customer_orders = @q.result.includes(:orders).to_a.uniq
  #@q.build_condition if @q.conditions.empty?
  #@q.build_sort if @q.sorts.empty?
end

end
