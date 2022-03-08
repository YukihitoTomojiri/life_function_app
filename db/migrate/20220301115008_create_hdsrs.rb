class CreateHdsrs < ActiveRecord::Migration[6.0]
  def change
    create_table :hdsrs do |t|
      t.string  :testing_place
      t.integer :answer_1,         null: false
      t.integer :answer_2_1,       null: false
      t.integer :answer_2_2,       null: false
      t.integer :answer_2_3,       null: false
      t.integer :answer_2_4,       null: false
      t.integer :answer_3,         null: false
      t.integer :selection_series, null: false
      t.integer :answer_4_1,       null: false
      t.integer :answer_4_2,       null: false
      t.integer :answer_4_3,       null: false
      t.integer :answer_5_1,       null: false
      t.integer :answer_5_2,       null: false
      t.integer :answer_6_1,       null: false
      t.integer :answer_6_2,       null: false
      t.integer :answer_7_1,       null: false
      t.integer :answer_7_2,       null: false
      t.integer :answer_7_3,       null: false
      t.integer :answer_8,         null: false
      t.integer :answer_9,         null: false
      t.integer :answer_9_memo
      t.integer :total_score
      t.references :hdsr_log,      null: false, foregin_key: true
      t.timestamps
    end
  end
end
