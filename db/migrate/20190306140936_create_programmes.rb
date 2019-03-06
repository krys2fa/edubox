class CreateProgrammes < ActiveRecord::Migration[5.1]
  def change
    create_table :programmes do |t|
      t.text :name
      t.references :college, foreign_key: true
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
