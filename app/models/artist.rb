class Artist < ActiveRecord::Base
  
  has_many  :albums
  has_one   :earliest_album, :class_name => "Album", :order => "year"
  

  all_blank = lambda { |attrs| attrs.values.all?{ |v| v.blank? } }
  accepts_nested_attributes_for :albums, :allow_destroy => true, :reject_if => all_blank
end
