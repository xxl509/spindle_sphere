class AddAdhdStatusToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :tcgpi_id_61100010, :boolean
    add_column :patients, :tcgpi_id_61100020, :boolean
    add_column :patients, :tcgpi_id_61100025, :boolean
    add_column :patients, :tcgpi_id_61100030, :boolean
    add_column :patients, :tcgpi_id_61109902, :boolean
    add_column :patients, :tcgpi_id_61353020, :boolean
    add_column :patients, :tcgpi_id_61353030, :boolean
    add_column :patients, :tcgpi_id_61354015, :boolean
    add_column :patients, :tcgpi_id_61400010, :boolean
    add_column :patients, :tcgpi_id_61400016, :boolean
    add_column :patients, :tcgpi_id_61400020, :boolean
    add_column :patients, :tcgpi_id_61400024, :boolean
    add_column :patients, :ccs_661, :boolean
  end
end
