class AddInitialExposureToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :initial_exposure, :integer
  end
end
