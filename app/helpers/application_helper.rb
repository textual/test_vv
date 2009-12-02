# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def artist_link(artist)
    artist ? link_to(h(artist.name), artist_path(artist)) : ""
  end
end
