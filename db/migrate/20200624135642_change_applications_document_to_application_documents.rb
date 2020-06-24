class ChangeApplicationsDocumentToApplicationDocuments < ActiveRecord::Migration[5.1]
  def change
    rename_table :applications_documents, :application_documents
  end
end
