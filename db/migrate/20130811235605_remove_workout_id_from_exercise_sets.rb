class RemoveWorkoutIdFromExerciseSets < ActiveRecord::Migration
  def change
  	remove_column :exercise_sets, :workout_id, :integer

  	add_column :exercise_sets, :exercise_id, :integer
  end
end
