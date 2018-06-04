class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.date :enrolled
      t.date :completed
      t.boolean :express
      t.integer :quantity
      t.string :studentid
      t.string :department
      t.string :college
      t.text :school
      t.text :phone
      t.text :programme
      t.text :address
      t.text :reason
      t.string :type
      t.boolean :processed

      t.timestamps
    end
  end
end
