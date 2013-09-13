class AddFeaturesToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :style, :string
    add_column :workouts, :intensity, :string
    add_column :workouts, :equipment, :string
    add_column :workouts, :difficulty, :string
  end
end
