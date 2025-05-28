class AddControlToAdhdNoMedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_no_med_patients, :control, :boolean
  end
end
