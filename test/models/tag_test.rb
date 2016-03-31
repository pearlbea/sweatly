require 'test_helper'

class TagTest < ActiveSupport::TestCase

  def setup
    @tag = Tag.new(tag: 'core')
  end

  test 'should be valid' do
    assert @tag.valid?
  end

  test 'should have tag property' do
    tag2 = Tag.new()
    assert_not tag2.valid?
  end

end
