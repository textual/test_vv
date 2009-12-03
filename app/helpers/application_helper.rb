# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def artist_link(artist)
    artist ? link_to(h(artist.name), artist) : "--"
  end
  
  def album_link(album)
    album ? link_to(h(album.title), album) : "--"
  end
  
  def icon(type)
    image_tag "webappers/#{type.titleize}.png", :alt => type
  end
end
