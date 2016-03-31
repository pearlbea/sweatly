class Admin::ExercisesController < ApplicationController
  layout "admin"

  def index
    @exercises = params[:tag] ? Exercise.tagged_with(params[:tag]) : Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to admin_exercises_path
    else
      render 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
    @workouts = @exercise.workouts
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      redirect_to admin_exercises_path
    else
      render 'edit'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :all_tags)
  end
end
