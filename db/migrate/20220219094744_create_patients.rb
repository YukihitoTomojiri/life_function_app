class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string     :patient_first_name,      null: false
      t.string     :patient_last_name,       null: false
      t.string     :patient_first_name_kana, null: false
      t.string     :patient_last_name_kana,  null: false
      t.date       :birthday,                null: false
      t.integer    :gender_id,               null: false
      t.integer    :care_certified_id,       null: false
      t.integer    :prefecture_id,           null: false
      t.references :user,                    null: false, foreign_key: true
      t.timestamps
    end
  end
end
