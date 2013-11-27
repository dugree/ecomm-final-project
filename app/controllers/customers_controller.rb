class CustomersController < ApplicationController
  def index
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:success] = "Order submitted"
      redirect_to root_path
    else
      flash[:alert] = "Order failed"
      redirect_to customers_path
    end
  end
end

