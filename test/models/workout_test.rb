require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  def setup
    @workout = Workout.new(level: 1)
  end

  test 'should be valid' do
    assert @workout.valid?
  end

  test 'level should be present' do
    @workout.level = ""
    assert_not @workout.valid?
  end

  test 'level should be single digit' do
    @workout.level = 20
    assert_not @workout.valid?
  end

end
