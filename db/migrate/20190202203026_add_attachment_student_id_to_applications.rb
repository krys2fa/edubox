class AddAttachmentStudentIdToApplications < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applications do |t|
      t.attachment :student_id
    end
  end

  def self.down
    remove_attachment :applications, :student_id
  end
end
