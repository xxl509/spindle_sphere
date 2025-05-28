class AddClean3ToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :clean_3, :boolean
  end
end
