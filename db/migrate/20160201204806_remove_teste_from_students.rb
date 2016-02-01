class RemoveTesteFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :teste, :string
  end
end
