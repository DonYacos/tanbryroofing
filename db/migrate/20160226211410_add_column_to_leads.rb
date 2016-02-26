class AddColumnToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :streetnumber, :string
  end
end
