class AddDocumentToApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :document, :integer, foreign_key: true
  end
end
