# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180803123308) do

  create_table "adhd_control_records", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "enrolid", limit: 20
    t.string "yrmon", limit: 10
    t.string "year", limit: 10
    t.string "month", limit: 10
    t.integer "age"
    t.integer "sex"
    t.string "region", limit: 10
    t.string "dobyr", limit: 10
    t.integer "tcgpi_id_61353020"
    t.integer "tcgpi_id_61353030"
    t.integer "tcgpi_id_61354015"
    t.integer "tcgpi_id_61400010"
    t.integer "tcgpi_id_61400016"
    t.integer "tcgpi_id_61400020"
    t.integer "tcgpi_id_61400024"
    t.integer "tcgpi_id_61100010"
    t.integer "tcgpi_id_61100020"
    t.integer "tcgpi_id_61100025"
    t.integer "tcgpi_id_61100030"
    t.integer "tcgpi_id_61109902"
    t.integer "ccs_661"
    t.integer "ccs_652"
    t.integer "ccs_6521"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.index ["adhd_ot", "adhd_pi", "adhd_ph", "adhd_ct", "adhd_ut", "ccs_6521"], name: "adhd_ot"
    t.index ["ccs_661", "ccs_652"], name: "ccs_661"
    t.index ["enrolid"], name: "enrolid"
    t.index ["tcgpi_id_61353020", "enrolid", "tcgpi_id_61353030", "tcgpi_id_61354015", "tcgpi_id_61400010", "tcgpi_id_61109902", "tcgpi_id_61100030", "tcgpi_id_61400016", "tcgpi_id_61400020", "tcgpi_id_61400024", "tcgpi_id_61100010", "tcgpi_id_61100020", "tcgpi_id_61100025"], name: "med"
  end

  create_table "adhd_med_patients", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "patient_id", limit: 20
    t.integer "sex"
    t.integer "region"
    t.integer "dobyr"
    t.integer "enroll_age"
    t.integer "med_age"
    t.integer "adhd"
    t.integer "sud"
    t.string "first_sud", limit: 10
    t.string "first_adhd", limit: 10
    t.string "first_enroll", limit: 10
    t.string "first_med", limit: 10
    t.integer "clean_months"
    t.integer "med_lag"
    t.integer "med_months"
    t.integer "a_months"
    t.integer "m_months"
    t.integer "o_months"
    t.integer "primary_med"
    t.integer "initial_med"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.integer "con_dis"
    t.integer "first_med_break"
    t.integer "first_med_switch"
    t.integer "one_year"
    t.integer "three_year"
    t.integer "five_year"
    t.integer "survival_date"
    t.boolean "clean_6"
    t.boolean "clean_12"
    t.boolean "clean_3"
    t.integer "b_months"
    t.integer "end_age"
    t.string "control_id"
    t.integer "total_months"
    t.integer "number_of_breaks"
    t.integer "number_of_alternations"
    t.integer "length_of_breaks"
    t.string "sud_med"
    t.string "sud_gap"
    t.index ["clean_3"], name: "clean_3"
    t.index ["clean_6", "clean_12"], name: "clean"
    t.index ["enroll_age"], name: "age"
    t.index ["first_med"], name: "first_med"
    t.index ["five_year", "clean_3"], name: "fiveyear"
    t.index ["one_year", "clean_3"], name: "oneyear"
    t.index ["patient_id"], name: "patientid"
    t.index ["survival_date"], name: "survival_date"
    t.index ["three_year", "clean_3"], name: "three year"
  end

  create_table "adhd_med_patients_one_year", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "patient_id", limit: 20
    t.integer "sex"
    t.integer "region"
    t.integer "dobyr"
    t.integer "enroll_age"
    t.integer "med_age"
    t.integer "adhd"
    t.integer "sud"
    t.string "first_sud", limit: 10
    t.string "first_adhd", limit: 10
    t.string "first_enroll", limit: 10
    t.string "first_med", limit: 10
    t.integer "clean_months"
    t.integer "med_lag"
    t.integer "med_months"
    t.integer "a_months"
    t.integer "m_months"
    t.integer "o_months"
    t.integer "primary_med"
    t.integer "initial_med"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.integer "con_dis"
    t.integer "first_med_break"
    t.integer "first_med_switch"
    t.integer "one_year"
    t.integer "three_year"
    t.integer "five_year"
    t.integer "survival_date"
    t.boolean "clean_6"
    t.boolean "clean_12"
    t.boolean "clean_3"
    t.integer "b_months"
    t.integer "end_age"
    t.string "control_id"
    t.integer "total_months"
    t.integer "number_of_breaks"
    t.integer "number_of_alternations"
    t.integer "length_of_breaks"
    t.string "sud_med"
    t.string "sud_gap"
    t.index ["clean_3"], name: "clean_3"
    t.index ["clean_6", "clean_12"], name: "clean"
    t.index ["enroll_age"], name: "age"
    t.index ["first_med"], name: "first_med"
    t.index ["five_year", "clean_3"], name: "fiveyear"
    t.index ["one_year", "clean_3"], name: "oneyear"
    t.index ["patient_id"], name: "patientid"
    t.index ["survival_date"], name: "survival_date"
    t.index ["three_year", "clean_3"], name: "three year"
  end

  create_table "adhd_med_patients_three_year", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "patient_id", limit: 20
    t.integer "sex"
    t.integer "region"
    t.integer "dobyr"
    t.integer "enroll_age"
    t.integer "med_age"
    t.integer "adhd"
    t.integer "sud"
    t.string "first_sud", limit: 10
    t.string "first_adhd", limit: 10
    t.string "first_enroll", limit: 10
    t.string "first_med", limit: 10
    t.integer "clean_months"
    t.integer "med_lag"
    t.integer "med_months"
    t.integer "a_months"
    t.integer "m_months"
    t.integer "o_months"
    t.integer "primary_med"
    t.integer "initial_med"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.integer "con_dis"
    t.integer "first_med_break"
    t.integer "first_med_switch"
    t.integer "one_year"
    t.integer "three_year"
    t.integer "five_year"
    t.integer "survival_date"
    t.boolean "clean_6"
    t.boolean "clean_12"
    t.boolean "clean_3"
    t.integer "b_months"
    t.integer "end_age"
    t.string "control_id"
    t.integer "total_months"
    t.integer "number_of_breaks"
    t.integer "number_of_alternations"
    t.integer "length_of_breaks"
    t.string "sud_med"
    t.string "sud_gap"
    t.index ["clean_3"], name: "clean_3"
    t.index ["clean_6", "clean_12"], name: "clean"
    t.index ["enroll_age"], name: "age"
    t.index ["first_med"], name: "first_med"
    t.index ["five_year", "clean_3"], name: "fiveyear"
    t.index ["one_year", "clean_3"], name: "oneyear"
    t.index ["patient_id"], name: "patientid"
    t.index ["survival_date"], name: "survival_date"
    t.index ["three_year", "clean_3"], name: "three year"
  end

  create_table "adhd_med_records", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "enrolid", limit: 20
    t.string "yrmon", limit: 10
    t.string "year", limit: 10
    t.string "month", limit: 10
    t.integer "age"
    t.integer "sex"
    t.string "region", limit: 10
    t.string "dobyr", limit: 10
    t.integer "tcgpi_id_61353020"
    t.integer "tcgpi_id_61353030"
    t.integer "tcgpi_id_61354015"
    t.integer "tcgpi_id_61400010"
    t.integer "tcgpi_id_61400016"
    t.integer "tcgpi_id_61400020"
    t.integer "tcgpi_id_61400024"
    t.integer "tcgpi_id_61100010"
    t.integer "tcgpi_id_61100020"
    t.integer "tcgpi_id_61100025"
    t.integer "tcgpi_id_61100030"
    t.integer "tcgpi_id_61109902"
    t.integer "ccs_661"
    t.integer "ccs_652"
    t.integer "ccs_6521"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.index ["adhd_ot", "adhd_pi", "adhd_ph", "adhd_ct", "adhd_ut", "ccs_6521"], name: "adhd_ot"
    t.index ["ccs_661", "ccs_652"], name: "ccs_661"
    t.index ["enrolid"], name: "enrolid"
    t.index ["tcgpi_id_61353020", "enrolid", "tcgpi_id_61353030", "tcgpi_id_61354015", "tcgpi_id_61400010", "tcgpi_id_61109902", "tcgpi_id_61100030", "tcgpi_id_61400016", "tcgpi_id_61400020", "tcgpi_id_61400024", "tcgpi_id_61100010", "tcgpi_id_61100020", "tcgpi_id_61100025"], name: "med"
  end

  create_table "adhd_no_med_patients", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "patient_id", limit: 20
    t.integer "sex"
    t.integer "region"
    t.integer "dobyr"
    t.integer "enroll_age"
    t.integer "med_age"
    t.integer "adhd"
    t.integer "sud"
    t.string "first_sud", limit: 10
    t.string "first_adhd", limit: 10
    t.string "first_enroll", limit: 10
    t.string "first_med", limit: 10
    t.integer "clean_months"
    t.integer "med_lag"
    t.integer "med_months"
    t.integer "a_months"
    t.integer "m_months"
    t.integer "o_months"
    t.integer "primary_med"
    t.integer "initial_med"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.integer "con_dis"
    t.integer "first_med_break"
    t.integer "first_med_switch"
    t.integer "one_year"
    t.integer "three_year"
    t.integer "five_year"
    t.integer "survival_date"
    t.integer "end_age"
    t.boolean "control"
    t.integer "total_months"
    t.index ["enroll_age"], name: "age"
    t.index ["first_med"], name: "first_med"
    t.index ["patient_id"], name: "patientid"
    t.index ["sex", "enroll_age", "end_age", "control"], name: "control"
  end

  create_table "old_patients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "patient_id"
    t.integer "exposure_age"
    t.string "exposure_adhd"
    t.string "exposure_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "first_sud_age"
    t.integer "tcgpi_id_61100010", limit: 1
    t.integer "tcgpi_id_61100020", limit: 1
    t.integer "tcgpi_id_61100025", limit: 1
    t.integer "tcgpi_id_61100030", limit: 1
    t.integer "tcgpi_id_61109902", limit: 1
    t.integer "tcgpi_id_61353020", limit: 1
    t.integer "tcgpi_id_61353030", limit: 1
    t.integer "tcgpi_id_61354015", limit: 1
    t.integer "tcgpi_id_61400010", limit: 1
    t.integer "tcgpi_id_61400016", limit: 1
    t.integer "tcgpi_id_61400020", limit: 1
    t.integer "tcgpi_id_61400024", limit: 1
    t.integer "ccs_661", limit: 1
    t.integer "last_seen_age"
    t.integer "initial_exposure"
    t.integer "last_adhd_age"
    t.string "sex"
    t.integer "breaks"
    t.integer "break_months"
    t.integer "adhd_months"
    t.decimal "drug_a_percentage", precision: 5, scale: 2
    t.decimal "drug_m_percentage", precision: 5, scale: 2
    t.integer "survival_date"
    t.boolean "initial_status"
    t.integer "dobyr"
    t.boolean "initial_one_month"
    t.index ["drug_a_percentage", "drug_m_percentage"], name: "drug_a_percentage"
    t.index ["exposure_age", "last_seen_age", "first_sud_age"], name: "exposure_age_2"
    t.index ["exposure_age"], name: "exposure_age"
    t.index ["initial_exposure"], name: "initial_exposure"
    t.index ["initial_one_month"], name: "initial_one_month"
    t.index ["initial_status"], name: "initial_status"
    t.index ["patient_id"], name: "enrolid"
    t.index ["survival_date"], name: "survival_date"
    t.index ["tcgpi_id_61100010", "tcgpi_id_61100020", "tcgpi_id_61100025", "tcgpi_id_61100030", "tcgpi_id_61109902", "tcgpi_id_61353020", "tcgpi_id_61353030", "tcgpi_id_61354015", "tcgpi_id_61400010", "tcgpi_id_61400016", "tcgpi_id_61400020", "tcgpi_id_61400024"], name: "tcgpi_id_61100010"
  end

  create_table "old_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "enrolid"
    t.string "dobyr"
    t.string "sex"
    t.string "yrmon"
    t.boolean "tcgpi_id_61100010"
    t.boolean "tcgpi_id_61100020"
    t.boolean "tcgpi_id_61100025"
    t.boolean "tcgpi_id_61100030"
    t.boolean "tcgpi_id_61109902"
    t.boolean "tcgpi_id_61353020"
    t.boolean "tcgpi_id_61353030"
    t.boolean "tcgpi_id_61354015"
    t.boolean "tcgpi_id_61400010"
    t.boolean "tcgpi_id_61400016"
    t.boolean "tcgpi_id_61400020"
    t.boolean "tcgpi_id_61400024"
    t.boolean "tcgpi_id_61409902"
    t.boolean "ccs_661"
    t.integer "age"
    t.index ["ccs_661"], name: "sud"
    t.index ["enrolid"], name: "patient_id"
    t.index ["tcgpi_id_61100010", "tcgpi_id_61100020", "tcgpi_id_61100025", "tcgpi_id_61100030", "tcgpi_id_61109902", "tcgpi_id_61353020", "tcgpi_id_61353030", "tcgpi_id_61354015", "tcgpi_id_61400010", "tcgpi_id_61400016", "tcgpi_id_61400020", "tcgpi_id_61400024", "tcgpi_id_61409902"], name: "adhd"
  end

  create_table "random_control_patients", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "patient_id", limit: 20
    t.integer "sex"
    t.integer "region"
    t.integer "dobyr"
    t.integer "enroll_age"
    t.integer "med_age"
    t.integer "adhd"
    t.integer "sud"
    t.string "first_sud", limit: 10
    t.string "first_adhd", limit: 10
    t.string "first_enroll", limit: 10
    t.string "first_med", limit: 10
    t.integer "clean_months"
    t.integer "med_lag"
    t.integer "med_months"
    t.integer "a_months"
    t.integer "m_months"
    t.integer "o_months"
    t.integer "primary_med"
    t.integer "initial_med"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.integer "con_dis"
    t.integer "first_med_break"
    t.integer "first_med_switch"
    t.integer "one_year"
    t.integer "three_year"
    t.integer "five_year"
    t.integer "survival_date"
    t.boolean "clean_6"
    t.boolean "clean_12"
    t.boolean "clean_3"
    t.integer "b_months"
    t.integer "end_age"
    t.string "control_id"
    t.integer "total_months"
    t.integer "number_of_breaks"
    t.integer "number_of_alternations"
    t.integer "length_of_breaks"
    t.string "sud_med"
    t.string "sud_gap"
    t.index ["clean_3"], name: "clean_3"
    t.index ["clean_6", "clean_12"], name: "clean"
    t.index ["enroll_age"], name: "age"
    t.index ["first_med"], name: "first_med"
    t.index ["five_year", "clean_3"], name: "fiveyear"
    t.index ["one_year", "clean_3"], name: "oneyear"
    t.index ["patient_id"], name: "patientid"
    t.index ["survival_date"], name: "survival_date"
    t.index ["three_year", "clean_3"], name: "three year"
  end

  create_table "test_records", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "enrolid", limit: 20
    t.string "yrmon", limit: 10
    t.string "year", limit: 10
    t.string "month", limit: 10
    t.integer "age"
    t.integer "sex"
    t.string "region", limit: 10
    t.string "dobyr", limit: 10
    t.integer "tcgpi_id_61353020"
    t.integer "tcgpi_id_61353030"
    t.integer "tcgpi_id_61354015"
    t.integer "tcgpi_id_61400010"
    t.integer "tcgpi_id_61400016"
    t.integer "tcgpi_id_61400020"
    t.integer "tcgpi_id_61400024"
    t.integer "tcgpi_id_61100010"
    t.integer "tcgpi_id_61100020"
    t.integer "tcgpi_id_61100025"
    t.integer "tcgpi_id_61100030"
    t.integer "tcgpi_id_61109902"
    t.integer "ccs_661"
    t.integer "ccs_652"
    t.integer "ccs_6521"
    t.integer "adhd_pi"
    t.integer "adhd_ph"
    t.integer "adhd_ct"
    t.integer "adhd_ut"
    t.integer "adhd_ot"
    t.index ["adhd_ot", "adhd_pi", "adhd_ph", "adhd_ct", "adhd_ut", "ccs_6521"], name: "adhd_ot"
    t.index ["ccs_661", "ccs_652"], name: "ccs_661"
    t.index ["enrolid"], name: "enrolid"
    t.index ["tcgpi_id_61353020", "enrolid", "tcgpi_id_61353030", "tcgpi_id_61354015", "tcgpi_id_61400010", "tcgpi_id_61109902", "tcgpi_id_61100030", "tcgpi_id_61400016", "tcgpi_id_61400020", "tcgpi_id_61400024", "tcgpi_id_61100010", "tcgpi_id_61100020", "tcgpi_id_61100025"], name: "med"
  end

end
