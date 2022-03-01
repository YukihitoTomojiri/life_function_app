class CreateHdsrLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :hdsr_logs do |t|
      t.references :user,    null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.timestamps
    end
  end
end
