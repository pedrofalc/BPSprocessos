class CreateSelectionsTeachers < ActiveRecord::Migration
  def change
    create_table :selections_teachers do |t|
    t.belongs_to :selection, index: true
        	    t.belongs_to :teachers, index: true

    end
  end
end
