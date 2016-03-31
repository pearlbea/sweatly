class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :level

      t.timestamps null: false
    end
  end
end
