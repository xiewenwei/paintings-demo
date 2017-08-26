require 'test_helper'

class PaintingTest < ActiveSupport::TestCase
  def test_should_not_be_valid
    pt = Painting.new
    assert !pt.valid?
    # puts pt.errors.messages
  end
end
