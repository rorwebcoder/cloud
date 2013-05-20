class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.string :shipper_name
      t.string :shipper_description
    end
  end
end
