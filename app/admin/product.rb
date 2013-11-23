ActiveAdmin.register Product do
  form do |f|
    f.inputs "details" do
      f.input :category
      f.input :name
      f.input :price
      f.input :stock
      f.input :description
    end
    f.inputs "image" do
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:medium))
    end
    f.actions
  end
end
