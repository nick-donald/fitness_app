class ExerciseSetsController < ApplicationController
	private

		def exercise_set_params
			params.require(:exercise_set).permit(:reps, :weight)
		end
end
