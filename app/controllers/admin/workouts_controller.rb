class Admin::WorkoutsController < ApplicationController
  layout 'admin'

  def index
    @workouts = Workout.all.sort_by(&:name)
  end

  def new
    @exercises = Exercise.all.sort_by(&:name)
  end

  def create
  end

  def edit
  end

  def update
  end

end
