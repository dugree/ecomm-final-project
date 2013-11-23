ActiveAdmin.register Product do
  form do |f|
    f.inputs "details" do
      f.input :category
      f.input :name
      f.input :price
      f.input :stock
    end
    f.inputs "image" do
      f.input :image, :as => :file
    end
    f.actions
  end
end
