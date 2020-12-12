class CustomersController < ApplicationController
  def index
    @pagy, @customers = pagy(Customer.all, items: 5)
  end

 def show
    @customer = Customer.find_by(id: params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end 
  end

  def edit
    @customer = Customer.find_by(id: params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
 
    if @customer.update(customer_params)
      redirect_to @customer
    else
      render 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.update(customer_active: false)
    #@customer.destroy
    redirect_to customers_path
  end

  private
    
    def customer_params
      params.require(:customer).permit(:first_name, :middle_name, :last_name, :email, :company_name, :refer_by, :mobile_no, :address, :city)
    end



end
