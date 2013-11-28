class OrdersController < ApplicationController
  def index
  end

  def add
    session[params[:id]] = 1
    redirect_to root_path
  end

  def buy
    reset_session
    session[params[:id]] = 1
    redirect_to customers_path
  end
end
