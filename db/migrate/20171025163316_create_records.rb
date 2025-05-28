class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :enrolid
      t.string :dobyr
      t.string :sex
      t.string :yrmon
      t.boolean :tcgpi_id_61100010
      t.boolean :tcgpi_id_61100020
      t.boolean :tcgpi_id_61100025
      t.boolean :tcgpi_id_61100030
      t.boolean :tcgpi_id_61109902
      t.boolean :tcgpi_id_61353020
      t.boolean :tcgpi_id_61353030
      t.boolean :tcgpi_id_61354015
      t.boolean :tcgpi_id_61400010
      t.boolean :tcgpi_id_61400016
      t.boolean :tcgpi_id_61400020
      t.boolean :tcgpi_id_61400024
      t.boolean :tcgpi_id_61409902
      t.boolean :ccs_661
    end
  end
end
