class Album < ActiveRecord::Base
  attr_accessible :title, :year, :condition, :artist_id
end
