ActiveAdmin.register Customer do
  show do
    panel "Details" do
      div do
        customer.name
      end
      div do
        customer.address
      end
      div do
        customer.postal_code
      end
      div do
        customer.city
      end
      div do
        customer.email
      end
      div do
        customer.province.name
      end
    end
    panel "Outstanding Orders" do
      table_for customer.orders.where(:status_id => 2) do
        column "Order Number" do |order|
          link_to order.id, admin_order_path(order)
        end
        column "Order Date" do |order|
          order.created_at
        end
      end
    end
  end
end
