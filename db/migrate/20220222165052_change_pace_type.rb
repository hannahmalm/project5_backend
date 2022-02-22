class ChangePaceType < ActiveRecord::Migration[6.1]
  def up
    change_column :logs, :pace, :string
  end

  def down
    change_column :logs, :pace, :decimal
  end
end
