class AddFieldsToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :breaks, :integer
    add_column :patients, :break_months, :integer
    add_column :patients, :adhd_months, :integer
  end
end
