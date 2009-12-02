module ArtistsHelper
  
  def button_to_add_an_album(form)
    button_to_function("Add an album") do |page|
      form.fields_for(:album, Album.new, :child_index => '_INDEX_') do |album_form|
        html = render :partial => 'album_form', :locals => {:album_form => album_form}
        page << %{Element.insert("albums", { bottom: update_index_in(#{html.to_json})})}
      end
    end
  end
end
