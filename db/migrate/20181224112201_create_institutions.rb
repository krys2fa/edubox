class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.text :name
      t.text :location
      t.text :contact

      t.timestamps
    end
  end
end
