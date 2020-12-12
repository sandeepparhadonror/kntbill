class ProductsController < ApplicationController

  def index
    @pagy, @products = pagy(Product.all, items: 5)
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end 
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find(params[:id])
  
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.update(product_active: false)
    #@product.destroy
    redirect_to products_path
  end

  private
    
    def product_params
      params.require(:product).permit(:product_name, :product_unit_price, :supplier_name, :unit_in_stock, :units_of_order)
    end


end

