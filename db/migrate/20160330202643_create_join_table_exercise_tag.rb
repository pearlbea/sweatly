class CreateJoinTableExerciseTag < ActiveRecord::Migration
  def change
    create_join_table :exercises, :tags do |t|
      t.index [:exercise_id, :tag_id]
      t.index [:tag_id, :exercise_id]
    end
  end
end
