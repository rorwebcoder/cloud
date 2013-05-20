class AddModeToLoads < ActiveRecord::Migration
  def change
    add_column :loads, :mode, :string
  end
end
