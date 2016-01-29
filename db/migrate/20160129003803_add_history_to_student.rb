class AddHistoryToStudent < ActiveRecord::Migration
  def change
    add_column :students, :history, :string
  end
end
