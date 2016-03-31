class Exercise < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings

  def self.tagged_with(tag)
    Tag.find_by_tag!(tag).exercises
  end

  def all_tags=(tags)
    self.tags = tags.split(',').map do |tag|
      Tag.where(tag: tag.strip).first_or_create!
    end
  end

  def all_tags
    tags.map(&:tag).join(', ')
  end

end
