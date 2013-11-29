class OrdersController < ApplicationController

  def index
    @items = []
    session.each do |item_id, quantity|
      if item_id.is_int?
        @items << { 'id' => item_id, 'quantity' => quantity } 
      end
    end
  end

  def add
    session[params[:id]] = 
    flash[:success] = "Item added to cart"
    redirect_to root_path
  end

  def buy
    reset_session
    session[params[:id]] = 1
    redirect_to customers_path
  end

  def create
  end

  def generate
    params.each do |key, value|
      if key[0..7] == 'quantity'
        session[key[8,20]] = value
      end
    end
    redirect_to customers_path
  end
end
