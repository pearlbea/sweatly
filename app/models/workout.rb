class Workout < ActiveRecord::Base
  validates :level, presence: true, length: { maximum: 1 }
  has_many :memberships
  has_many :workouts, through: :memberships
  has_many :assignments
  has_many :users, through: :assignments
end
