class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.string :bill_of_lading
      t.integer :carrier_id
      t.integer :vendor_id
      t.integer :shipper_id
      t.string :equipment_type
      t.string :inco_terms
      t.string :freight_terms
      t.string :mode
    end
  end
end
