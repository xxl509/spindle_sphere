class AddInitialStatusToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :initial_status, :boolean
  end
end
