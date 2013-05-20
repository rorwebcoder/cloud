class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :load_id
      t.string :stop_type
      t.integer :stop_sequence
      t.string :stop_name
      t.string :stop_address
      t.string :stop_city
      t.string :stop_state
      t.string :stop_country
      t.integer :stop_postal
    end
  end
end
