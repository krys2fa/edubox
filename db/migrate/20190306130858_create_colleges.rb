class CreateColleges < ActiveRecord::Migration[5.1]
  def change
    create_table :colleges do |t|
      t.text :name
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
