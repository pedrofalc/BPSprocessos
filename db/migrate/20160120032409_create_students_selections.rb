class CreateStudentsSelections < ActiveRecord::Migration
  def change
    create_table :students_selections do |t|
     t.belongs_to :student, index: true
     t.belongs_to :selection, index: true

    end
  end
end
