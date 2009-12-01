# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

andrew = Artist.create!(:name => "Andrew")
Album.create!(:title => "Andrew's rock opera", :year => 1973, :condition => "like new", :artist => andrew)
Album.create!(:title => "Andrew's jazz fusion", :year => 1973, :condition => "dirty", :artist => andrew)
Album.create!(:title => "Andrew's metal band", :year => 1985, :condition => "scratched", :artist => andrew)

andrew = Artist.create!(:name => "Tim")
Album.create!(:title => "Tim's punk rock album", :year => 1982, :condition => "like new", :artist => andrew)
