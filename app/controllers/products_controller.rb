require 'users_controller.rb'
require 'sessions_helper'

class ProductsController < ApplicationController
before_action :admin_user,     only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @products = Product.paginate(page: params[:page])
  end
  
  def new
    @product=Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Товар добавлен"
      redirect_to @product
    else
      render 'new'
    end
  end
  
  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Товар удален!"
    redirect_to products_url
  end
  
  def show
    @product = Product.find(params[:id])
  end
    
  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end
  
  private

    def product_params
      params.require(:product).permit(:name, :price, :image,
                                   :details)
    end
     
    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
     
end
