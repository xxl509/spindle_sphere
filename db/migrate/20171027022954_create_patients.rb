class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :patient_id
      t.integer :exposure_age
      t.string :exposure_adhd
      t.string :exposure_date

      t.timestamps
    end
  end
end
