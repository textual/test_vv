require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  
  Factory.define :album do |a|
    a.title 'The Resistance'
    a.year  2009
    a.condition 'mint'
    a.artist   {|art| art.association(:artist) }
  end
  
  Factory.define :artist do |art|
    art.name 'Muse'
  end
  
  context "A Album instance" do
    setup do
      @album = Factory(:album)
    end
    
    should_allow_values_for :condition, "mint", "good", "average", "poor"
    
    should "return its title" do
      assert_equal "The Resistance", @album.title
    end
    
    should "return the earliest album" do
      expected = {:order => "year", :limit => 1}
      assert_equal expected, Album.earliest.proxy_options
    end
    
    should "return the albums in a mint condition" do
      expected = {:conditions => ["condition = ?", 'mint']}
      assert_equal expected, Album.by_condition("mint").proxy_options
    end
    
    
  end
  
end
