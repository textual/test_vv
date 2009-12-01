class Albums < ActiveRecord::Base
  attr_accessible :title, :year, :condition, :artist_id
  
  belongs_to  :artist
  
  named_scope :earliest, :order => "year", :limit => 1
  named_scope :by_condition, lambda { |condition| { :conditions => ['condition = ?', condition] } }
  
  
end
