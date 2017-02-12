class AddColumnToEstimates < ActiveRecord::Migration
  def change
    add_column :estimates, :lead_id, :integer
  end
end
