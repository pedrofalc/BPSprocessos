class AddNoticeToSelection < ActiveRecord::Migration
  def change
    add_column :selections, :notice, :string
  end
end
