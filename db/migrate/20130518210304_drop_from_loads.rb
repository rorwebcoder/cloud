class Drop < ActiveRecord::Migration
   def change
    drop_column :loads, :mode_string, :string
  end
end
