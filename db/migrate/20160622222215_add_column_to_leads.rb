class AddColumnToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :estimate_id, :integer
    add_index :leads, :estimate_id
  end
end
