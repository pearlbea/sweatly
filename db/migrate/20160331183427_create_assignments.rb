class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :workout, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
