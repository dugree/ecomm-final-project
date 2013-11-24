class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_vars

  def set_vars
    @search = Product.search(params[:q])
    @categories = Category.all 
  end
end
