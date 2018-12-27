class AddInstitutionToApplications < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :institution, foreign_key: true
  end
end
