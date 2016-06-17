class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def authenticate_user!
    redirect_to new_session_path, alert: "Please sign in" unless user_signed_in?
  end
  def index
    @products = Product.order("id")
  end

  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product).permit(:title, :description, :price, :sales_price, :category_id)
    @product = Product.new product_params
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product), notice: "Product saved"
    else
      flash[:alert] = "Product not saved"
      render :new
    end
  end

  def show
    @product = Product.find params[:id]
    @review = Review.new

  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    product_params = params.require(:product).permit(:title, :description, :price)
    if @product.update product_params
      redirect_to product_path(@product)
    else
      redirect_to edit_product_path(@product)
    end
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    redirect_to products_path, notice: "Item deleted"
  end




end
