class DropModeStringFromLoads < ActiveRecord::Migration
   def change
    remove_column :loads, :mode_string, :string
  end
end
