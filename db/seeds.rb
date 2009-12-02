# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


cascada = Artist.create(:name => "Cascada")
Artist.create(:name => "Britney Spears")
mozart = Artist.create(:name => "Wolfgang Amadeus Mozart")
Artist.create(:name => "Elvis Presley")
Artist.create(:name => "Aretha Franklin")

Album.create!(:title => "Every Time We Touch", :year => 2006, :condition => "like new", :artist_id => cascada.id)
Album.create!(:title => "Perfect Day", :year => 2007, :condition => "possessed", :artist_id => cascada.id)
Album.create!(:title => "Evacuate the Dancefloor", :year => 2009, :artist_id => cascada.id)

Album.create!(:title => "Sonata number 12", :year => 1745, :artist_id => mozart.id, :condition => "unknown")
Album.create!(:title => "Sonata number 13", :year => 1746, :artist_id => mozart.id, :condition => "boring")
Album.create!(:title => "Funky Time party", :year => 1749, :artist_id => mozart.id, :condition => "used")


andrew = Artist.create!(:name => "Andrew")
Album.create!(:title => "Andrew's rock opera", :year => 1973, :condition => "like new", :artist_id => andrew.id)
Album.create!(:title => "Andrew's jazz fusion", :year => 1973, :condition => "dirty", :artist_id => andrew.id)
Album.create!(:title => "Andrew's metal band", :year => 1985, :condition => "scratched", :artist_id => andrew.id)

andrew = Artist.create!(:name => "Tim")
Album.create!(:title => "Tim's punk rock album", :year => 1982, :condition => "like gnu", :artist_id => andrew.id)

