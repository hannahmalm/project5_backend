class AddInstructionsToRuns < ActiveRecord::Migration[6.1]
  def change
    add_column :runs, :instructions, :string
  end
end
