class WorkoutsController < ApplicationController

	def create
		@workout = current_user.workouts.build(workout_params)
		if @workout.save
			flash[:success] = "Workout Created"
			redirect_to current_user
		else
			redirect_to root_url
			flash[:success] = "Unsuccessful"
		end
	end

	def show
		@workout = Workout.find(params[:id])
	end


	private

		def workout_params
			params.require(:workout).permit(:name, :style, :equipment, :difficulty, :intensity, exercises_attributes: [:name, :description, exercises_sets_attributes:[:reps, :weight]])
		end
end
