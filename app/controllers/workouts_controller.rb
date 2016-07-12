class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    Workout.create(workout_params)
    redirect_to root_path
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :activity, :mood, :duration)
  end

end
