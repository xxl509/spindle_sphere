class AddAgeToRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :age, :integer
  end
end
