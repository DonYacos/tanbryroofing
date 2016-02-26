class RemoveColumnsFromLeads < ActiveRecord::Migration
  def change
    remove_column :leads, :streetNumber, :string
    remove_column :leads, :street, :string
  end
end
