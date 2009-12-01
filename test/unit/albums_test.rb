require 'test_helper'

class AlbumsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Albums.new.valid?
  end
end
