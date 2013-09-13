class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			flash[:success] = "GET HUGE!!!"
			redirect_to @user, notice: "Welcome!"
		else
			render "new"
		end
	end

	def show
		@user = User.find(params[:id])
		@workout = current_user.workouts.build if signed_in?
		@exercise = @workout.exercises.build
		@exercise_set = @exercise.exercise_sets.build
	end

	private

		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end
end