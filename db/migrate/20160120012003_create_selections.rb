class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :name
      t.date :begin
      t.date :end
      t.integer :owner

      t.timestamps null: false
    end
  end
end
