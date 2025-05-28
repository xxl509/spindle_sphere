class AddSudMedToAdhdMedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :sud_med, :string
    add_column :adhd_med_patients, :sud_gap, :string
  end
end
