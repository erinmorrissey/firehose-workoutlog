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

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update_attributes(workout_params)
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :activity, :mood, :duration)
  end

end
