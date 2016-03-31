class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :exercises, through: :taggings
end
