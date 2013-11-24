class SubcategoriesController < ApplicationController
  def index
    @search = Product.search(params[:q])
    @subcategory = Subcategory.find(params[:id])
    @products = @subcategory.products

  end
end
