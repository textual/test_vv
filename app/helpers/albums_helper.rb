module AlbumsHelper
  
  def artist_options(selected_artist)
    artist_options = Artist.all.map do |artist|
      [artist.name, artist.id]
    end
    options_for_select(artist_options, selected_artist.try(:id))
  end
  
end
