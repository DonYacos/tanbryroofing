class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :firstName
      t.string :lastName
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
