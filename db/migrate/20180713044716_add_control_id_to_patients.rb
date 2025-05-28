class AddControlIdToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :adhd_med_patients, :control_id, :string
  end
end
