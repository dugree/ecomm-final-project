class CustomersController < ApplicationController
  def index
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      order = Order.new
      order.customer = @customer
      order.status = Status.find(1)
      if order.save
        session.each do |item_id, quantity|
          if item_id.is_int?
            new_item = OrderProduct.new
            new_item.order = order
            new_item.product = Product.find(item_id)
            new_item.price = Product.find(item_id).price
            new_item.quantity = quantity
            if new_item.save
            else
              flash[:alert] = "Order failed"
              redirect_to customers_path              
            end
          end
        end
        flash[:success] = "Order submitted"
        redirect_to root_path
      end
    else
      flash[:alert] = "Order failed"
      redirect_to customers_path
    end
  end
end

