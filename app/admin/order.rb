ActiveAdmin.register Order do
  show do
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
