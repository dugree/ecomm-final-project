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
    session[params[:id]] = 1
    redirect_to root_path
  end

  def buy
    reset_session
    session[params[:id]] = 1
    redirect_to customers_path
  end

  def create
  end
end
