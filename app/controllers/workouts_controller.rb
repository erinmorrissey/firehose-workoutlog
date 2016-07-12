class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all.order("created_at DESC")
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def show
    @workout = Workout.find(params[:id])
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :activity, :mood, :duration)
  end

end
