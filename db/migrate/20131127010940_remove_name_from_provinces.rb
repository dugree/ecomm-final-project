class RemoveNameFromProvinces < ActiveRecord::Migration
  def up
    remove_column :provinces, :name
  end

  def down
    add_column :provinces, :name, :integer
  end
end
