class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.string :category
      t.float :total_distance

      t.timestamps
    end
  end
end
