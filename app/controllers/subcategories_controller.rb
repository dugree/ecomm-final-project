class SubcategoriesController < ApplicationController
  def index
    @subcategory = Subcategory.find(params[:id])
    @products = @subcategory.products
  end
end
