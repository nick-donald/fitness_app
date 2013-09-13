class RemoveExercisePartIdFromExerciseSets < ActiveRecord::Migration
  def change
  	remove_column :exercise_sets, :exercise_part_id, :integer
  	remove_column :exercise_sets, :exercise_part_type, :string

  	add_column :exercise_sets, :workout_id, :integer
  end
end
