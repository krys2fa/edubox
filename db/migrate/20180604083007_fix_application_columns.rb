class FixApplicationColumns < ActiveRecord::Migration[5.1]
  def change
  	change_column :applications, :processed, :boolean, default: false
  	change_column :applications, :express, :boolean, default: false
  	remove_column :applications, :type
  end
end
