class RemoveTotalDistanceFromRuns < ActiveRecord::Migration[6.1]
  def up
    remove_column :runs, :total_distance
  end

  def down
    add_column :runs, :total_distance, :float
  end
end
