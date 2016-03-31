class Workout < ActiveRecord::Migration
  def change
    change_table :workouts do |t|
      t.string :name
    end
  end
end
