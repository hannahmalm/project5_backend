class ChangeDateTypes < ActiveRecord::Migration[6.1]
  def up
    change_column :logs, :date, :datetime
  end

  def down
    change_column :logs, :date, :date
  end
end
