class ProductsController < ApplicationController
  def show
    @search = Product.search(params[:q])
    @product = Product.find(params[:id])
  end

  def index
    @search = Product.search(params[:q])
    @products = @search.result
  end
end
