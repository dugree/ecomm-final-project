class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = @search.result
    #@products = Product.order(:name).page(params[:page]).per(4)
    #@products = Product.all
  end
end
