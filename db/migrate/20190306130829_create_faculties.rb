class CreateFaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :faculties do |t|
      t.text :name
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end


