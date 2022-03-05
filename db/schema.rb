# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_01_121440) do

  create_table "hasegawa_dimentia_scales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "testing_date", null: false
    t.string "testing_place"
    t.integer "answer_1", null: false
    t.integer "answer_2_1", null: false
    t.integer "answer_2_2", null: false
    t.integer "answer_2_3", null: false
    t.integer "answer_2_4", null: false
    t.integer "answer_3", null: false
    t.integer "answer_4_1", null: false
    t.integer "answer_4_2", null: false
    t.integer "answer_4_3", null: false
    t.integer "answer_5_1", null: false
    t.integer "answer_5_2", null: false
    t.integer "answer_6_1", null: false
    t.integer "answer_6_2", null: false
    t.integer "answer_7_1", null: false
    t.integer "answer_7_2", null: false
    t.integer "answer_7_3", null: false
    t.integer "answer_8", null: false
    t.integer "answer_9", null: false
    t.string "answer_9_memo"
    t.integer "total_score", null: false
    t.bigint "user_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_hasegawa_dimentia_scales_on_patient_id"
    t.index ["user_id"], name: "index_hasegawa_dimentia_scales_on_user_id"
  end

  create_table "hdsr_logs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_hdsr_logs_on_patient_id"
    t.index ["user_id"], name: "index_hdsr_logs_on_user_id"
  end

  create_table "hdsrs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "testing_date", null: false
    t.string "testing_place"
    t.integer "answer_1", null: false
    t.integer "answer_2_1", null: false
    t.integer "answer_2_2", null: false
    t.integer "answer_2_3", null: false
    t.integer "answer_2_4", null: false
    t.integer "answer_3", null: false
    t.integer "selection_series", null: false
    t.integer "answer_4_1", null: false
    t.integer "answer_4_2", null: false
    t.integer "answer_4_3", null: false
    t.integer "answer_5_1", null: false
    t.integer "answer_5_2", null: false
    t.integer "answer_6_1", null: false
    t.integer "answer_6_2", null: false
    t.integer "answer_7_1", null: false
    t.integer "answer_7_2", null: false
    t.integer "answer_7_3", null: false
    t.integer "answer_8", null: false
    t.integer "answer_9", null: false
    t.integer "answer_9_memo"
    t.integer "total_score"
    t.bigint "user_id"
    t.bigint "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_hdsrs_on_patient_id"
    t.index ["user_id"], name: "index_hdsrs_on_user_id"
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "patient_first_name", null: false
    t.string "patient_last_name", null: false
    t.string "patient_first_name_kana", null: false
    t.string "patient_last_name_kana", null: false
    t.date "birthday", null: false
    t.integer "gender_id", null: false
    t.integer "care_certified_id", null: false
    t.integer "prefecture_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
    t.date "birthday", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "facility", null: false
    t.string "affiliation"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "hasegawa_dimentia_scales", "patients"
  add_foreign_key "hasegawa_dimentia_scales", "users"
  add_foreign_key "hdsr_logs", "patients"
  add_foreign_key "hdsr_logs", "users"
  add_foreign_key "patients", "users"
end
