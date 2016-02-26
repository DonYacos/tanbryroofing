class RemoveColumnFromLeads < ActiveRecord::Migration
  def change
    remove_column :leads, :streetNumber, :string
  end
end
