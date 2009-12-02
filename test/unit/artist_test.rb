require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  
  Factory.define :artist do |art|
    art.name 'Radiohead'
  end

  def test_should_be_valid
    assert Artist.new.valid?
  end



  context "An Artist instance without an album" do
    setup do
      @artist = Factory(:artist)
    end

    should "have zero albums" do
      assert_equal @artist.albums.count, 0
    end

    should "have no earliest album" do
      assert_nil @artist.earliest_album
    end

  end

  context "An Artist instance with albums" do
    should "have some unit tests"
  end

end
