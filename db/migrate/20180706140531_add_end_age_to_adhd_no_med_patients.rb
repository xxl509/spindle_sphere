class AddEndAgeToAdhdNoMedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_no_med_patients, :end_age, :integer
  end
end
