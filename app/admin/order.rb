ActiveAdmin.register Order do
  show do
    panel "Customer" do  
      div do
        order.customer.name
      end
      div do
        order.customer.address
      end
      div do
        order.customer.postal_code
      end
      div do
        order.customer.city
      end
      div do
        order.customer.province.name
      end
    end
    panel "Status" do
      div do
        order.status.name
      end
    end
    panel "Order" do
      table_for order.order_products do
        column "name" do |item|
          item.product.name
        end
        column "price" do |item|
          item.price
        end
        column "quantity" do |item|
          item.quantity
        end
      end
    end
  end
end
