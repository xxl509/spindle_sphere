class AddFirstSudAgeToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :first_sud_age, :integer
  end
end
