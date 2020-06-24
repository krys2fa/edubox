class AddCollegeIdAndFacultyIdColumns < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :faculty, foreign_key: true
    add_reference :applications, :college, foreign_key: true
  end
end
