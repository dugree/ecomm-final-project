class InfoController < ApplicationController

  def index
    @products = Product.all
  end
end
