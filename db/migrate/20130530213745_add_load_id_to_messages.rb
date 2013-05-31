class AddLoadIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :load_id, :integer
  end
end
