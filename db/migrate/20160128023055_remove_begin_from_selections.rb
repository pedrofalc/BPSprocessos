class RemoveBeginFromSelections < ActiveRecord::Migration
  def change
    remove_column :selections, :begin, :date
  end

  def down
  	add_column :selections, :begin, :date
end
end