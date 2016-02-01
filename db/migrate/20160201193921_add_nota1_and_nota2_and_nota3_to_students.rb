class AddNota1AndNota2AndNota3ToStudents < ActiveRecord::Migration
  def change
    add_column :students, :nota1, :integer
    add_column :students, :nota2, :integer
    add_column :students, :nota3, :integer
  end
end
