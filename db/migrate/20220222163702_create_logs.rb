class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.decimal :distance
      t.decimal :pace
      t.date :date
      t.string :notes
      t.integer :run_id

      t.timestamps
    end
  end
end
