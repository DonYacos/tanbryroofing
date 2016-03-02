class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :firstName
      t.string :lastName
      t.string :phone
      t.string :email
      t.string :streetnumber
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.text :comment
    end
  end
end
