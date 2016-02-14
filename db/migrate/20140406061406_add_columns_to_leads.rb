class AddColumnsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :residential, :boolean
    add_column :leads, :commercial, :boolean
  end
end
