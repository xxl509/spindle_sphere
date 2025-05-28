class AddInitialOneMonthToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :initial_one_month, :boolean
  end
end
