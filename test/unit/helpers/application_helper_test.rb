require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  
  def test_artist_link__blank
    assert_equal '--', artist_link(nil)
  end
  
  def test_artist_link
    artist = Factory(:artist)
    assert_equal link_to(artist.name, artist), artist_link(artist)
  end
  
  def test_album_link__blank
    assert_equal '--', album_link(nil)
  end
  
  def test_album_link
    album = Factory(:album)
    assert_equal link_to(album.title, album), album_link(album)
  end
  
end