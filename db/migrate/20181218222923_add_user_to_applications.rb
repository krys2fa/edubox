class AddUserToApplications < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :user, foreign_key: true
  end
end
