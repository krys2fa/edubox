class AddAgentColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :agent, :boolean, default: false
  end
end
