class InfoController < ApplicationController

  def index
    @search = Product.search(params[:q])
    @products = Product.all
  end
end
