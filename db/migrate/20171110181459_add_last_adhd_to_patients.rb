class AddLastAdhdToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :last_adhd_age, :integer
  end
end
