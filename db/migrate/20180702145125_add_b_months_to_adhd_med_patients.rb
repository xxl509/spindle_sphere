class AddBMonthsToAdhdMedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :b_months, :integer
  end
end
