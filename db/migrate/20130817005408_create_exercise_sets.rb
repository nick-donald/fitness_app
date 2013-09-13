class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.integer :exercise_id
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
