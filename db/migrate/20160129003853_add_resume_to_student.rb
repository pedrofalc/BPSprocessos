class AddResumeToStudent < ActiveRecord::Migration
  def change
    add_column :students, :resume, :string
  end
end
