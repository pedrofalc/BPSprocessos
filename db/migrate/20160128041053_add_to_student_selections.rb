class AddToStudentSelections < ActiveRecord::Migration
  def change
  	 add_column :students, :selection_id, :integer
  end
end
