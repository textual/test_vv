class Artist < ActiveRecord::Base
  
  has_many  :albums
  has_one   :earliest_album, :class_name => "Album", :order => "year"
  
  accepts_nested_attributes_for :albums
end
