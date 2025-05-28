class AddDobyrToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :dobyr, :integer
  end
end
