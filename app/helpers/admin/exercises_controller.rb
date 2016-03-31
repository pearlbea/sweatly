class Admin::ExercisesController < ApplicationController
  layout "admin"

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
    @tags = Tag.all

  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to admin_exercises_path
    else
      render 'new'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])

  end

  private

  def exercise_params
    params.require(:exercise)
      .permit(:name, exercises_tags_attributes: [:tag_id, :exercise_id])
  end
end
