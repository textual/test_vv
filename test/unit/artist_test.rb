require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Artist.new.valid?
  end
end
