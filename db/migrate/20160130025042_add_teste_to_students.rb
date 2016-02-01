class AddTesteToStudents < ActiveRecord::Migration
  def change
    add_column :students, :teste, :string
  end
end
