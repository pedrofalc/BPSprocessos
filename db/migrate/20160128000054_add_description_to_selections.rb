class AddDescriptionToSelections < ActiveRecord::Migration
  def change
    add_column :selections, :description, :text
  end
end
