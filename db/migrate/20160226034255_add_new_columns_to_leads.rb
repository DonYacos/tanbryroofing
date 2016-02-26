class AddNewColumnsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :streetNumber, :string
    add_column :leads, :street, :string
  end
end
