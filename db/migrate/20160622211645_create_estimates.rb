class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.date :estimate_date
      t.date :expiration_date
      t.float :total
      t.integer :quantity
      t.float :amount

      t.timestamps
    end
  end
end
