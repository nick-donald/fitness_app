class RemoveEserciseSetsTable < ActiveRecord::Migration
  def change
  	drop_table :exercise_sets
  end
end
