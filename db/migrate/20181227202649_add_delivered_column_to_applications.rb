class AddDeliveredColumnToApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :delivered, :boolean, default: false
  end
end
