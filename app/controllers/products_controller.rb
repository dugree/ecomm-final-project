class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = @search.result
    #@products = Product.order(:name).page(params[:page]).per(4)
    #@products = Product.all
  end

  def view_new
    @products = Product.order('created_at DESC').limit(5)
  end

  def view_recently_updated
    @products = Product.order('updated_at DESC').limit(5)
  end
end
