class AddBreaksInfoToAdhdMedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :number_of_breaks, :integer
    add_column :adhd_med_patients, :number_of_alternations, :integer
    add_column :adhd_med_patients, :length_of_breaks, :integer
  end
end
