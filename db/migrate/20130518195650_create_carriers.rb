class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :carrier_name
      t.string :carrier_description
    end
  end
end
