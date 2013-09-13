class Workout < ActiveRecord::Base
	belongs_to :user
	
	has_many :exercises
	accepts_nested_attributes_for :exercises

	has_many :exercise_sets, through: :exercises
	accepts_nested_attributes_for :exercise_sets
end
