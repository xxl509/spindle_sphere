class AddPercentageToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :drug_a_percentage, :decimal, :precision => 5, :scale => 2
    add_column :patients, :drug_m_percentage, :decimal, :precision => 5, :scale => 2
  end
end
