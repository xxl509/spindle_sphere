class AddSurvivalDateToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :survival_date, :integer
  end
end
