class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end
  
  def all
    @all_product = Product.all
  end
  
  def new
  end
  
end
