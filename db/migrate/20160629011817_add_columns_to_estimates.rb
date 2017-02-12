class AddColumnsToEstimates < ActiveRecord::Migration
  def change
    add_column :estimates, :name, :string
    add_column :estimates, :address, :string
    add_column :estimates, :email, :string
    add_column :estimates, :phone, :string
  end
end
