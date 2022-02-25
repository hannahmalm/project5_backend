class ChangeDate < ActiveRecord::Migration[6.1]
  def up
    change_column :logs, :date, :date
  end

  def down
    change_column :logs, :date, :datetime
  end
end
