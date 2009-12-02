require File.expand_path('../test_helper', File.dirname(__FILE__))

class ArtistTest < ActiveSupport::TestCase
  
  Factory.define :artist do |art|
    art.name 'Radiohead'
  end

  def test_should_be_valid
    assert Artist.new.valid?
  end

  def test_nested_attributes
    andrew = Artist.new(:name => 'andrew')
    andrew.albums_attributes = {0 => {:title => 'a', :year => 1978, :condition => 'mint'}}

    album = andrew.albums.first
    assert_equal 'a', album.title
    assert_equal 1978, album.year
    assert_equal 'mint', album.condition
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
