class ExercisesController < ApplicationController

	# def create
	# 	@workout = Workout.find(params[:id])
	# 	@exercise = @workout.exercises.build(exercise_params)
	# 	if @exercise.save
	# 		redirect_to @workout
	# 	else
	# 		redirect_to root_url
	# 	end
	# end

	private

		def exercise_params
			params.require(:exercise).permit(:name, :description)
		end
end
