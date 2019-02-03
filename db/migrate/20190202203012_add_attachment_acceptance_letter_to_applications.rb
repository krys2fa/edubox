class AddAttachmentAcceptanceLetterToApplications < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applications do |t|
      t.attachment :acceptance_letter
    end
  end

  def self.down
    remove_attachment :applications, :acceptance_letter
  end
end
