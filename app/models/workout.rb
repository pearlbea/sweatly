class Workout < ActiveRecord::Base
  validates :level, presence: true, length: { maximum: 1 }
  has_many :exercises
end
