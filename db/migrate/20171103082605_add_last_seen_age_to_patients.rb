class AddLastSeenAgeToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :last_seen_age, :integer
  end
end
