class AddEndAgeToAdhdMedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :end_age, :integer
  end
end
