class AddCoordinatesToApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :longitude, :float
    add_column :applications, :latitude, :float
  end
end
