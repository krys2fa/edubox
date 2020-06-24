class CreateApplicationsDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :applications_documents do |t|
      t.references :application, foreign_key: true
      t.references :document, foreign_key: true
      t.timestamps
    end
  end
end
