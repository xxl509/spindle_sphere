class AddCleanToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :clean_6, :boolean
    add_column :adhd_med_patients, :clean_12, :boolean
  end
end
