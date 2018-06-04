class AddDocumentToApplications < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :document, foreign_key: true
  end
end
