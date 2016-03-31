class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :workout, index: true, foreign_key: true
      t.references :exercise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
